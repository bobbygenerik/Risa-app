.class public final Lˊˊ/ٴﹶ;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field public static final synthetic ᵔי:I


# instance fields
.field public final ʽʽ:Landroid/hardware/Sensor;

.field public final ʾˋ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ˈٴ:Lˊˊ/ˈ;

.field public ˉٴ:Landroid/view/Surface;

.field public final ˊʻ:Lˊˊ/ʼˎ;

.field public ٴʼ:Z

.field public ٴᵢ:Landroid/graphics/SurfaceTexture;

.field public final ᴵˊ:Landroid/hardware/SensorManager;

.field public final ᴵᵔ:Landroid/os/Handler;

.field public ᵎˊ:Z

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lˊˊ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lˊˊ/ٴﹶ;->ᴵᵔ:Landroid/os/Handler;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lˊˊ/ٴﹶ;->ᴵˊ:Landroid/hardware/SensorManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lˊˊ/ٴﹶ;->ʽʽ:Landroid/hardware/Sensor;

    new-instance v0, Lˊˊ/ʼˎ;

    invoke-direct {v0}, Lˊˊ/ʼˎ;-><init>()V

    iput-object v0, p0, Lˊˊ/ٴﹶ;->ˊʻ:Lˊˊ/ʼˎ;

    new-instance v1, Lˊˊ/ˆʾ;

    invoke-direct {v1, p0, v0}, Lˊˊ/ˆʾ;-><init>(Lˊˊ/ٴﹶ;Lˊˊ/ʼˎ;)V

    new-instance v0, Lˊˊ/ﾞʻ;

    invoke-direct {v0, p1, v1}, Lˊˊ/ﾞʻ;-><init>(Landroid/content/Context;Lˊˊ/ˆʾ;)V

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v2, Lˊˊ/ˈ;

    const/4 v3, 0x2

    new-array v4, v3, [Lˊˊ/ʽ;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v2, p1, v4}, Lˊˊ/ˈ;-><init>(Landroid/view/Display;[Lˊˊ/ʽ;)V

    iput-object v2, p0, Lˊˊ/ٴﹶ;->ˈٴ:Lˊˊ/ˈ;

    iput-boolean v5, p0, Lˊˊ/ٴﹶ;->ᵎⁱ:Z

    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getCameraMotionListener()Lˊˊ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lˊˊ/ٴﹶ;->ˊʻ:Lˊˊ/ʼˎ;

    return-object v0
.end method

.method public getVideoFrameMetadataListener()Lﾞˏ/ʽﹳ;
    .locals 1

    iget-object v0, p0, Lˊˊ/ٴﹶ;->ˊʻ:Lˊˊ/ʼˎ;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lˊˊ/ٴﹶ;->ˉٴ:Landroid/view/Surface;

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    new-instance v0, Landroidx/lifecycle/ᵎⁱ;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lˊˊ/ٴﹶ;->ᴵᵔ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˊˊ/ٴﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lˊˊ/ٴﹶ;->ﹳٴ()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊˊ/ٴﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lˊˊ/ٴﹶ;->ﹳٴ()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    iget-object v0, p0, Lˊˊ/ٴﹶ;->ˊʻ:Lˊˊ/ʼˎ;

    iput p1, v0, Lˊˊ/ʼˎ;->ᵎˊ:I

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lˊˊ/ٴﹶ;->ᵎⁱ:Z

    invoke-virtual {p0}, Lˊˊ/ٴﹶ;->ﹳٴ()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˊˊ/ٴﹶ;->ᵎⁱ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lˊˊ/ٴﹶ;->ٴʼ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lˊˊ/ٴﹶ;->ʽʽ:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lˊˊ/ٴﹶ;->ᵎˊ:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lˊˊ/ٴﹶ;->ˈٴ:Lˊˊ/ˈ;

    iget-object v4, p0, Lˊˊ/ٴﹶ;->ᴵˊ:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_1
    iput-boolean v0, p0, Lˊˊ/ٴﹶ;->ᵎˊ:Z

    :cond_3
    :goto_2
    return-void
.end method
