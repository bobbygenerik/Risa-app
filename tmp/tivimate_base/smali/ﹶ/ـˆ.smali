.class public final Lﹶ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lﹶ/ʾᵎ;

.field public final ⁱˊ:Lﹶ/ʻٴ;

.field public final ﹳٴ:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lﹶ/ʾᵎ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶ/ـˆ;->ʽ:Lﹶ/ʾᵎ;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lﹶ/ـˆ;->ﹳٴ:Landroid/os/Handler;

    new-instance p1, Lﹶ/ʻٴ;

    invoke-direct {p1, p0}, Lﹶ/ʻٴ;-><init>(Lﹶ/ـˆ;)V

    iput-object p1, p0, Lﹶ/ـˆ;->ⁱˊ:Lﹶ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lﹶ/ـˆ;->ⁱˊ:Lﹶ/ʻٴ;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p1, p0, Lﹶ/ـˆ;->ﹳٴ:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
