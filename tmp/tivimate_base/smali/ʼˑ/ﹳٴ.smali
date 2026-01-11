.class public abstract Lʼˑ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ˑﹳ;

.field public static final ˈ:Lﹳʽ/ʽ;

.field public static final ⁱˊ:Lﹳʽ/ˏי;

.field public static final ﹳٴ:Lﹳʽ/ʻٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v0}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʻٴ;

    const-class v3, Lﹳʾ/ˈ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ʻٴ;-><init>(Ljava/lang/Class;Lﹳʽ/ـˆ;)V

    sput-object v2, Lʼˑ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ˏי;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ˏי;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ʽﹳ;)V

    sput-object v2, Lʼˑ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˏי;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ˑﹳ;

    const-class v3, Lﹳʾ/ﹳٴ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    sput-object v2, Lʼˑ/ﹳٴ;->ʽ:Lﹳʽ/ˑﹳ;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽ;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ʽ;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ˈ;)V

    sput-object v2, Lʼˑ/ﹳٴ;->ˈ:Lﹳʽ/ʽ;

    return-void
.end method

.method public static ⁱˊ(Lᴵﹳ/י;)Lﹳʾ/ʽ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p0, Lﹳʾ/ʽ;->ʽ:Lﹳʾ/ʽ;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    return-object p0

    :cond_2
    sget-object p0, Lﹳʾ/ʽ;->ˈ:Lﹳʾ/ʽ;

    return-object p0

    :cond_3
    sget-object p0, Lﹳʾ/ʽ;->ⁱˊ:Lﹳʾ/ʽ;

    return-object p0
.end method

.method public static ﹳٴ(Lﹳʾ/ʽ;)Lᴵﹳ/י;
    .locals 3

    .prologue
    sget-object v0, Lﹳʾ/ʽ;->ⁱˊ:Lﹳʾ/ʽ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    return-object p0

    :cond_0
    sget-object v0, Lﹳʾ/ʽ;->ʽ:Lﹳʾ/ʽ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    return-object p0

    :cond_1
    sget-object v0, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    return-object p0

    :cond_2
    sget-object v0, Lﹳʾ/ʽ;->ˈ:Lﹳʾ/ʽ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lᴵﹳ/י;->ˈٴ:Lᴵﹳ/י;

    return-object p0

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
