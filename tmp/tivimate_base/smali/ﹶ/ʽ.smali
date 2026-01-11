.class public final Lﹶ/ʽ;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Lﹶ/ˑﹳ;


# direct methods
.method public constructor <init>(Lﹶ/ˑﹳ;)V
    .locals 0

    iput-object p1, p0, Lﹶ/ʽ;->ﹳٴ:Lﹶ/ˑﹳ;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    iget-object p1, p0, Lﹶ/ʽ;->ﹳٴ:Lﹶ/ˑﹳ;

    iget-object v0, p1, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v1, p1, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iget-object v2, p1, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {v0, v1, v2}, Lﹶ/ⁱˊ;->ʽ(Landroid/content/Context;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶ/ʽ;->ﹳٴ:Lﹶ/ˑﹳ;

    iget-object v1, v0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {p1, v1}, Lᐧˎ/ʼʼ;->ﾞʻ([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    :cond_0
    iget-object p1, v0, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v1, v0, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iget-object v2, v0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {p1, v1, v2}, Lﹶ/ⁱˊ;->ʽ(Landroid/content/Context;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    return-void
.end method
