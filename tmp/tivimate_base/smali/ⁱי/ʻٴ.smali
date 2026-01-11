.class public final Lⁱי/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˏ/ʽʽ;
.implements Lﹶ/ᵔᵢ;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic ʾˋ:Lⁱי/ʼʼ;


# direct methods
.method public constructor <init>(Lⁱי/ʼʼ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    invoke-virtual {p1, v0}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    iput-object v0, p1, Lⁱי/ʼʼ;->ʼـ:Landroid/view/Surface;

    invoke-virtual {p1, p2, p3}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    invoke-virtual {v0, p1}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Lⁱי/ʼʼ;->ˆˑ(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    invoke-virtual {p1, p2, p3}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    invoke-virtual {p1, p3, p4}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-boolean v1, v0, Lⁱי/ʼʼ;->ʽⁱ:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    iget-object p1, p0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-boolean v0, p1, Lⁱי/ʼʼ;->ʽⁱ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void
.end method
