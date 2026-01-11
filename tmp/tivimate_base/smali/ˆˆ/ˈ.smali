.class public final Lˆˆ/ˈ;
.super Lٴﾞ/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Lᵢʾ/ﹳٴ;


# instance fields
.field public final ʼʼ:Ljava/util/Set;

.field public final ᵢˏ:Lٴﾞ/ˉʿ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/parse/ٴʼ;Lٴﾞ/ˉʿ;Lﹳˊ/ʼˎ;Lﹳˊ/ʼˎ;)V
    .locals 9

    .prologue
    invoke-static {p1}, Lٴﾞ/ˊʻ;->ﹳٴ(Landroid/content/Context;)Lٴﾞ/ˊʻ;

    move-result-object v3

    sget-object v4, Lᴵˈ/ˑﹳ;->ˈ:Lᴵˈ/ˑﹳ;

    invoke-static {p5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {p6}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v6, Lˊⁱ/ˑﹳ;

    const/16 v0, 0xe

    invoke-direct {v6, v0, p5}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lˉˆ/ʿ;

    const/16 p5, 0x1c

    invoke-direct {v7, p5, p6}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iget-object p5, p3, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    move-object v8, p5

    check-cast v8, Ljava/lang/String;

    const/16 v5, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lٴﾞ/ˑﹳ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lٴﾞ/ˊʻ;Lᴵˈ/ﾞᴵ;ILٴﾞ/ⁱˊ;Lٴﾞ/ʽ;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, v0, Lˆˆ/ˈ;->ʼʼ:Ljava/util/Set;

    iput-object p4, v0, Lˆˆ/ˈ;->ᵢˏ:Lٴﾞ/ˉʿ;

    return-void
.end method


# virtual methods
.method public final ʻٴ()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final ʼᐧ(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lˆˆ/ﹳٴ;

    if-eqz v2, :cond_1

    check-cast v1, Lˆˆ/ﹳٴ;

    return-object v1

    :cond_1
    new-instance v1, Lˆˆ/ﹳٴ;

    invoke-direct {v1, p1, v0}, Lˆˆ/ﹳٴ;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method

.method public final ʾᵎ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˈ()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method public final ˏי()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lˆˆ/ˈ;->ʼʼ:Ljava/util/Set;

    return-object v0
.end method

.method public final יـ()Landroid/os/Bundle;
    .locals 3

    .prologue
    iget-object v0, p0, Lˆˆ/ˈ;->ᵢˏ:Lٴﾞ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v0, Lٴﾞ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "api"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public final ـˆ()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final ᵔﹳ()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ⁱˊ()Ljava/util/Set;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ﾞʻ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆˆ/ˈ;->ʼʼ:Ljava/util/Set;

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final ﹳᐧ()[Lᴵˈ/ˈ;
    .locals 1

    sget-object v0, Lᵢˆ/ⁱˊ;->ⁱˊ:[Lᴵˈ/ˈ;

    return-object v0
.end method
