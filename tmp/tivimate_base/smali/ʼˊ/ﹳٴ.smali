.class public Lʼˊ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ﹳٴ:Lʼˊ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lʼˊ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "org.tukaani.xz.ArrayCache"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dummy"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "Basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-object v0, Lʼˊ/ﹳٴ;->ﹳٴ:Lʼˊ/ﹳٴ;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Unsupported value \'"

    const-string v3, "\' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lʼˊ/ˑﹳ;->ﹳٴ:Lʼˊ/ﾞᴵ;

    sput-object v0, Lʼˊ/ﹳٴ;->ﹳٴ:Lʼˊ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public ⁱˊ([B)V
    .locals 0

    return-void
.end method

.method public ﹳٴ(I)[B
    .locals 0

    new-array p1, p1, [B

    return-object p1
.end method
