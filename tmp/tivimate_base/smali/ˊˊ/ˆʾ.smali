.class public final Lˊˊ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lˊˊ/ʽ;


# instance fields
.field public final ʽʽ:[F

.field public final ʾˋ:Lˊˊ/ʼˎ;

.field public final ˈٴ:[F

.field public ˉٴ:F

.field public final ˊʻ:[F

.field public final ٴʼ:[F

.field public ٴᵢ:F

.field public final ᴵˊ:[F

.field public final ᴵᵔ:[F

.field public final synthetic ᵎˊ:Lˊˊ/ٴﹶ;

.field public final ᵎⁱ:[F


# direct methods
.method public constructor <init>(Lˊˊ/ٴﹶ;Lˊˊ/ʼˎ;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊˊ/ˆʾ;->ᵎˊ:Lˊˊ/ٴﹶ;

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Lˊˊ/ˆʾ;->ᴵˊ:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lˊˊ/ˆʾ;->ʽʽ:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lˊˊ/ˆʾ;->ˈٴ:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lˊˊ/ˆʾ;->ᴵᵔ:[F

    new-array v2, p1, [F

    iput-object v2, p0, Lˊˊ/ˆʾ;->ˊʻ:[F

    new-array v3, p1, [F

    iput-object v3, p0, Lˊˊ/ˆʾ;->ᵎⁱ:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lˊˊ/ˆʾ;->ٴʼ:[F

    iput-object p2, p0, Lˊˊ/ˆʾ;->ʾˋ:Lˊˊ/ʼˎ;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Lˊˊ/ˆʾ;->ˉٴ:F

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˊˊ/ˆʾ;->ٴʼ:[F

    iget-object v2, p0, Lˊˊ/ˆʾ;->ˈٴ:[F

    iget-object v4, p0, Lˊˊ/ˆʾ;->ˊʻ:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v6, p0, Lˊˊ/ˆʾ;->ᵎⁱ:[F

    iget-object v8, p0, Lˊˊ/ˆʾ;->ᴵᵔ:[F

    iget-object v10, p0, Lˊˊ/ˆʾ;->ٴʼ:[F

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lˊˊ/ˆʾ;->ʽʽ:[F

    iget-object v2, p0, Lˊˊ/ˆʾ;->ᴵˊ:[F

    iget-object v4, p0, Lˊˊ/ˆʾ;->ᵎⁱ:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p1, p0, Lˊˊ/ˆʾ;->ʾˋ:Lˊˊ/ʼˎ;

    iget-object v0, p0, Lˊˊ/ˆʾ;->ʽʽ:[F

    invoke-virtual {p1, v0}, Lˊˊ/ʼˎ;->ⁱˊ([F)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    .prologue
    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v3, p1

    if-lez p1, :cond_0

    const-wide p1, 0x4046800000000000L    # 45.0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    float-to-double v0, v3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    goto :goto_0

    :goto_1
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    iget-object v0, p0, Lˊˊ/ˆʾ;->ᴵˊ:[F

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public final declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lˊˊ/ˆʾ;->ᵎˊ:Lˊˊ/ٴﹶ;

    iget-object p2, p0, Lˊˊ/ˆʾ;->ʾˋ:Lˊˊ/ʼˎ;

    invoke-virtual {p2}, Lˊˊ/ʼˎ;->ˑﹳ()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object v0, p1, Lˊˊ/ٴﹶ;->ᴵᵔ:Landroid/os/Handler;

    new-instance v1, Lʻʿ/ᵔʾ;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2, p2}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ﹳٴ([FF)V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˊˊ/ˆʾ;->ˈٴ:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    iput p1, p0, Lˊˊ/ˆʾ;->ˉٴ:F

    iget-object v0, p0, Lˊˊ/ˆʾ;->ᴵᵔ:[F

    iget p2, p0, Lˊˊ/ˆʾ;->ٴᵢ:F

    neg-float v2, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float v3, p1

    iget p1, p0, Lˊˊ/ˆʾ;->ˉٴ:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float v4, p1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
