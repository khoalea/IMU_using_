#ifndef PIDCONTROLLER_H
#define PIDCONTROLLER_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    float Kp;
    float Ki;
    float Kd;
    float prevError;
    float integral;
    float dts; // Sampling time

} PIDController_t;

void PIDController_Init(PIDController_t *pid, float Kp, float Ki, float Kd, float dts);
float PIDController_Compute(PIDController_t *pid, float setpoint, float processVariable, float dt);
void PIDController_Reset(PIDController_t *pid);

#ifdef __cplusplus
}
#endif

#endif /* PIDCONTROLLER_H */
