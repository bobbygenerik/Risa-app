.class public final synthetic Lⁱי/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic ﹳٴ:Lⁱי/ˈ;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ⁱˊ;->ﹳٴ:Lⁱי/ˈ;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 6

    .prologue
    iget-object v0, p0, Lⁱי/ⁱˊ;->ﹳٴ:Lⁱי/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x3

    if-eq p1, v1, :cond_4

    const/4 v1, -0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x21

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_0

    const-string v0, "AudioFocusManager"

    const-string v1, "Unknown focus change type: "

    invoke-static {p1, v1, v0}, Lˉˆ/ٴᴵ;->יـ(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lⁱי/ˈ;->ⁱˊ(I)V

    iget-object p1, v0, Lⁱי/ˈ;->ʽ:Lⁱי/ᴵᵔ;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v0

    iget-object p1, p1, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {p1, v2, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v0, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v0}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    :cond_1
    return-void

    :cond_2
    iget-object p1, v0, Lⁱי/ˈ;->ʽ:Lⁱי/ᴵᵔ;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v5

    iget-object p1, p1, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v5, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v5}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    :cond_3
    invoke-virtual {v0}, Lⁱי/ˈ;->ﹳٴ()V

    invoke-virtual {v0, v4}, Lⁱי/ˈ;->ⁱˊ(I)V

    return-void

    :cond_4
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lⁱי/ˈ;->ⁱˊ(I)V

    return-void
.end method
