.class public final Lٴﾞ/ᵢˏ;
.super Lٴﾞ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public final ᵎﹶ:Landroid/os/IBinder;

.field public final synthetic ᵔᵢ:Lٴﾞ/ˑﹳ;


# direct methods
.method public constructor <init>(Lٴﾞ/ˑﹳ;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lٴﾞ/ᵢˏ;->ᵔᵢ:Lٴﾞ/ˑﹳ;

    invoke-direct {p0, p1, p2, p4}, Lٴﾞ/ʼᐧ;-><init>(Lٴﾞ/ˑﹳ;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lٴﾞ/ᵢˏ;->ᵎﹶ:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Z
    .locals 6

    .prologue
    const-string v0, "GmsClient"

    iget-object v1, p0, Lٴﾞ/ᵢˏ;->ᵎﹶ:Landroid/os/IBinder;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lٴﾞ/ᵢˏ;->ᵔᵢ:Lٴﾞ/ˑﹳ;

    invoke-virtual {v4}, Lٴﾞ/ˑﹳ;->ʻٴ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lٴﾞ/ˑﹳ;->ʻٴ()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "service descriptor mismatch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs. "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    return v2

    :cond_0
    invoke-virtual {v4, v1}, Lٴﾞ/ˑﹳ;->ʼᐧ(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-static {v4, v1, v3, v0}, Lٴﾞ/ˑﹳ;->ᵢˏ(Lٴﾞ/ˑﹳ;IILandroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v4, v1, v3, v0}, Lٴﾞ/ˑﹳ;->ᵢˏ(Lٴﾞ/ˑﹳ;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v4, Lٴﾞ/ˑﹳ;->ˏי:Lᴵˈ/ⁱˊ;

    iget-object v0, v4, Lٴﾞ/ˑﹳ;->ˉˆ:Lٴﾞ/ⁱˊ;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lٴﾞ/ⁱˊ;->ˈ()V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2

    :catch_0
    const-string v1, "service probably died"

    nop

    return v2
.end method

.method public final ﹳٴ(Lᴵˈ/ⁱˊ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴﾞ/ᵢˏ;->ᵔᵢ:Lٴﾞ/ˑﹳ;

    iget-object v0, v0, Lٴﾞ/ˑﹳ;->ʼᐧ:Lٴﾞ/ʽ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lٴﾞ/ʽ;->ˑﹳ(Lᴵˈ/ⁱˊ;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method
