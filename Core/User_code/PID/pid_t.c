#include "pid_t.h"

void PIDController_Init(PIDController_t *pid, float Kp, float Ki, float Kd, float dts) {
    pid->Kp = Kp;
    pid->Ki = Ki;
    pid->Kd = Kd;
    pid->prevError = 0;
    pid->integral = 0;
    pid->dts = dts;
}

float PIDController_Compute(PIDController_t *pid, float setpoint, float processVariable, float dt) {
    float error = setpoint - processVariable;
    pid->integral += error * dt;
    float derivative = (error - pid->prevError) / dt;
    float output = pid->Kp * error + pid->Ki * pid->integral + pid->Kd * derivative;
    pid->prevError = error;
    return output;
}

void PIDController_Reset(PIDController_t *pid) {
    pid->prevError = 0;
    pid->integral = 0;
}
