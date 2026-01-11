package p157;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.bumptech.glide.C0229;

/* renamed from: ˊˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2515 implements SensorEventListener {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Display f9571;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f9572;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC2513[] f9575;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float[] f9574 = new float[16];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float[] f9573 = new float[16];

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float[] f9569 = new float[16];

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float[] f9570 = new float[3];

    public C2515(Display display, InterfaceC2513... interfaceC2513Arr) {
        this.f9571 = display;
        this.f9575 = interfaceC2513Arr;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        int i;
        float[] fArr = sensorEvent.values;
        float[] fArr2 = this.f9574;
        SensorManager.getRotationMatrixFromVector(fArr2, fArr);
        int rotation = this.f9571.getRotation();
        float[] fArr3 = this.f9573;
        if (rotation != 0) {
            int i2 = 129;
            if (rotation != 1) {
                i = 130;
                if (rotation != 2) {
                    if (rotation != 3) {
                        throw new IllegalStateException();
                    }
                    i2 = 130;
                    i = 1;
                }
            } else {
                i = 129;
                i2 = 2;
            }
            System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
            SensorManager.remapCoordinateSystem(fArr3, i2, i, fArr2);
        }
        SensorManager.remapCoordinateSystem(fArr2, 1, 131, fArr3);
        float[] fArr4 = this.f9570;
        SensorManager.getOrientation(fArr3, fArr4);
        float f = fArr4[2];
        Matrix.rotateM(fArr2, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        boolean z = this.f9572;
        float[] fArr5 = this.f9569;
        if (!z) {
            C0229.m1127(fArr5, fArr2);
            this.f9572 = true;
        }
        System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
        Matrix.multiplyMM(fArr2, 0, fArr3, 0, fArr5, 0);
        for (int i3 = 0; i3 < 2; i3++) {
            this.f9575[i3].mo5642(fArr2, f);
        }
    }
}
