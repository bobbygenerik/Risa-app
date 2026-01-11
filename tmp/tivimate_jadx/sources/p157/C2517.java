package p157;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import androidx.lifecycle.RunnableC0197;
import java.util.concurrent.CopyOnWriteArrayList;
import p457.InterfaceC5386;

/* renamed from: ˊˊ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2517 extends GLSurfaceView {

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final /* synthetic */ int f9577 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Sensor f9578;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f9579;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2515 f9580;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Surface f9581;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C2512 f9582;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f9583;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public SurfaceTexture f9584;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final SensorManager f9585;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Handler f9586;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f9587;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f9588;

    public C2517(Context context) {
        super(context, null);
        this.f9579 = new CopyOnWriteArrayList();
        this.f9586 = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.f9585 = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.f9578 = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        C2512 c2512 = new C2512();
        this.f9582 = c2512;
        C2514 c2514 = new C2514(this, c2512);
        View.OnTouchListener viewOnTouchListenerC2522 = new ViewOnTouchListenerC2522(context, c2514);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.f9580 = new C2515(windowManager.getDefaultDisplay(), viewOnTouchListenerC2522, c2514);
        this.f9588 = true;
        setEGLContextClientVersion(2);
        setRenderer(c2514);
        setOnTouchListener(viewOnTouchListenerC2522);
    }

    public InterfaceC2521 getCameraMotionListener() {
        return this.f9582;
    }

    public InterfaceC5386 getVideoFrameMetadataListener() {
        return this.f9582;
    }

    public Surface getVideoSurface() {
        return this.f9581;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f9586.post(new RunnableC0197(20, this));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f9583 = false;
        m5643();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f9583 = true;
        m5643();
    }

    public void setDefaultStereoMode(int i) {
        this.f9582.f9555 = i;
    }

    public void setUseSensorRotation(boolean z) {
        this.f9588 = z;
        m5643();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5643() {
        boolean z = this.f9588 && this.f9583;
        Sensor sensor = this.f9578;
        if (sensor == null || z == this.f9587) {
            return;
        }
        C2515 c2515 = this.f9580;
        SensorManager sensorManager = this.f9585;
        if (z) {
            sensorManager.registerListener(c2515, sensor, 0);
        } else {
            sensorManager.unregisterListener(c2515);
        }
        this.f9587 = z;
    }
}
