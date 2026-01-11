.class public abstract Lـᵔ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ˑﹳ;

.field public static final ˈ:Lﹳʽ/ʽ;

.field public static final ˑﹳ:Ljava/util/Map;

.field public static final ⁱˊ:Lﹳʽ/ˏי;

.field public static final ﹳٴ:Lﹳʽ/ʻٴ;

.field public static final ﾞᴵ:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    invoke-static {v0}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lיٴ/ˈ;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lיٴ/ˈ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʻٴ;

    const-class v3, Lˏˑ/ˑﹳ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ʻٴ;-><init>(Ljava/lang/Class;Lﹳʽ/ـˆ;)V

    sput-object v2, Lـᵔ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    new-instance v1, Lיٴ/ˈ;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lיٴ/ˈ;-><init>(I)V

    new-instance v2, Lﹳʽ/ˏי;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ˏי;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ʽﹳ;)V

    sput-object v2, Lـᵔ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˏי;

    new-instance v1, Lיٴ/ˈ;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lיٴ/ˈ;-><init>(I)V

    new-instance v2, Lﹳʽ/ˑﹳ;

    const-class v3, Lˏˑ/ﹳٴ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    sput-object v2, Lـᵔ/ﹳٴ;->ʽ:Lﹳʽ/ˑﹳ;

    new-instance v1, Lיٴ/ˈ;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lיٴ/ˈ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽ;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ʽ;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ˈ;)V

    sput-object v2, Lـᵔ/ﹳٴ;->ˈ:Lﹳʽ/ʽ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lˏˑ/ˈ;->ˈ:Lˏˑ/ˈ;

    sget-object v2, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lˏˑ/ˈ;->ⁱˊ:Lˏˑ/ˈ;

    sget-object v4, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lˏˑ/ˈ;->ʽ:Lˏˑ/ˈ;

    sget-object v6, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lـᵔ/ﹳٴ;->ˑﹳ:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lᴵﹳ/י;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lᴵﹳ/י;->ˈٴ:Lᴵﹳ/י;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lـᵔ/ﹳٴ;->ﾞᴵ:Ljava/util/Map;

    return-void
.end method

.method public static ⁱˊ(Lᴵﹳ/י;)Lˏˑ/ˈ;
    .locals 3

    .prologue
    sget-object v0, Lـᵔ/ﹳٴ;->ﾞᴵ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lˏˑ/ˈ;

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
.end method

.method public static ﹳٴ(Lˏˑ/ˈ;)Lᴵﹳ/י;
    .locals 3

    .prologue
    sget-object v0, Lـᵔ/ﹳٴ;->ˑﹳ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lᴵﹳ/י;

    return-object p0

    :cond_0
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
