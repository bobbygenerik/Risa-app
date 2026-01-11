.class public final synthetic Lˊˊ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic ʾˋ:Lˊˊ/ʼˎ;


# direct methods
.method public synthetic constructor <init>(Lˊˊ/ʼˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊˊ/ᵔᵢ;->ʾˋ:Lˊˊ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lˊˊ/ᵔᵢ;->ʾˋ:Lˊˊ/ʼˎ;

    iget-object p1, p1, Lˊˊ/ʼˎ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
