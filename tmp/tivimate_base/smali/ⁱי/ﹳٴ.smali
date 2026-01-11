.class public final Lⁱי/ﹳٴ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lcom/bumptech/glide/ʼˎ;

.field public final ⁱˊ:Lᐧˎ/ʻٴ;

.field public final ﹳٴ:Lⁱי/ʻٴ;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/ʼˎ;Lᐧˎ/ʻٴ;Lⁱי/ʻٴ;)V
    .locals 0

    iput-object p1, p0, Lⁱי/ﹳٴ;->ʽ:Lcom/bumptech/glide/ʼˎ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lⁱי/ﹳٴ;->ⁱˊ:Lᐧˎ/ʻٴ;

    iput-object p3, p0, Lⁱי/ﹳٴ;->ﹳٴ:Lⁱי/ʻٴ;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lٴˉ/ⁱˊ;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iget-object p2, p0, Lⁱי/ﹳٴ;->ⁱˊ:Lᐧˎ/ʻٴ;

    invoke-virtual {p2, p1}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
