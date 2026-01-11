.class public final Lʾﾞ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final ﹳٴ:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾﾞ/ʽ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    new-instance p2, Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lʾﾞ/ʽ;->ﹳٴ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    new-instance v0, Lʾﾞ/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lʾﾞ/ⁱˊ;-><init>(IILjava/lang/Object;)V

    iget-object p1, p0, Lʾﾞ/ʽ;->ﹳٴ:Landroid/os/Handler;

    invoke-static {p1, v0}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
