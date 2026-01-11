.class public final Lﹶﾞ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾞᴵ:Lﹶﾞ/ˉˆ;


# instance fields
.field public final ʽ:Ljava/lang/Boolean;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Ljava/util/EnumMap;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶﾞ/ˉˆ;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2, v1, v1}, Lﹶﾞ/ˉˆ;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lﹶﾞ/ˉˆ;->ﾞᴵ:Lﹶﾞ/ˉˆ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    if-nez p1, :cond_0

    sget-object p1, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    goto :goto_0

    :cond_1
    sget-object p1, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    :goto_0
    sget-object v1, Lﹶﾞ/ⁱˉ;->ˈٴ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iput p2, p0, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    invoke-virtual {p0}, Lﹶﾞ/ˉˆ;->ˈ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    iput-object p4, p0, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    iput p2, p0, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    invoke-virtual {p0}, Lﹶﾞ/ˉˆ;->ˈ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    iput-object p4, p0, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    return-void
.end method

.method public static ʽ(ILandroid/os/Bundle;)Lﹶﾞ/ˉˆ;
    .locals 7

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lﹶﾞ/ˉˆ;

    invoke-direct {p1, v0, p0, v0, v0}, Lﹶﾞ/ˉˆ;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lﹶﾞ/ⁱˉ;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v2, Lﹶﾞ/ʾﾞ;->ʽʽ:Lﹶﾞ/ʾﾞ;

    iget-object v2, v2, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget-object v6, v5, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lﹶﾞ/ᐧˎ;->ˈ(Ljava/lang/String;)Lﹶﾞ/ʽⁱ;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lﹶﾞ/ˉˆ;

    const-string v3, "is_dma_region"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    const-string v3, "cps_display_str"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p0, v0, p1}, Lﹶﾞ/ˉˆ;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object v2
.end method

.method public static ⁱˊ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;
    .locals 9

    .prologue
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lﹶﾞ/ⁱˉ;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lﹶﾞ/ʾﾞ;->ʽʽ:Lﹶﾞ/ʾﾞ;

    iget-object v3, v3, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v4, v3

    const/4 v5, 0x1

    move v6, v0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lﹶﾞ/ᐧˎ;->ˑﹳ(C)Lﹶﾞ/ʽⁱ;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_0

    :cond_1
    new-instance p0, Lﹶﾞ/ˉˆ;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0, v0}, Lﹶﾞ/ˉˆ;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lﹶﾞ/ˉˆ;->ﾞᴵ:Lﹶﾞ/ˉˆ;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lﹶﾞ/ˉˆ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lﹶﾞ/ˉˆ;

    iget-object v0, p0, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p1, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    iget-object v1, p1, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    iget-object p1, p1, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    iget-object v1, p0, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    if-nez v1, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v2, p0, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit16 v1, v1, 0x89

    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    invoke-static {v1}, Lﹶﾞ/ᐧˎ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lﹶﾞ/ʾﾞ;->ʽʽ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ʽⁱ;

    const-string v5, "uninitialized"

    if-nez v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "granted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "denied"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, "eu_consent_policy"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const-string v2, ",isDmaRegion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, ",cpsDisplayStr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lﹶﾞ/ʾﾞ;->ʽʽ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ʽⁱ;

    invoke-static {v4}, Lﹶﾞ/ᐧˎ;->ᵔᵢ(Lﹶﾞ/ʽⁱ;)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Lﹶﾞ/ʽⁱ;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    sget-object v1, Lﹶﾞ/ⁱˉ;->ˈٴ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶﾞ/ʽⁱ;

    if-nez v0, :cond_0

    sget-object v0, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    :cond_0
    return-object v0
.end method
