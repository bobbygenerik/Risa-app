.class public final Lﹶﾞ/ᐧˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹶﾞ/ᐧˎ;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶﾞ/ᐧˎ;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lﹶﾞ/ᐧˎ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ᐧˎ;->ʽ:Lﹶﾞ/ᐧˎ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    sget-object v1, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    sget-object v2, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    iput p2, p0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    return-void
.end method

.method public static ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;
    .locals 7

    .prologue
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    move-object v3, p1

    :goto_1
    aget-object v4, v1, v2

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lﹶﾞ/ᐧˎ;->ˑﹳ(C)Lﹶﾞ/ʽⁱ;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    sget-object v3, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    invoke-virtual {v0, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lﹶﾞ/ᐧˎ;

    invoke-direct {p1, v0, p0}, Lﹶﾞ/ᐧˎ;-><init>(Ljava/util/EnumMap;I)V

    return-object p1
.end method

.method public static ˈ(Ljava/lang/String;)Lﹶﾞ/ʽⁱ;
    .locals 2

    .prologue
    sget-object v0, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "granted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    return-object p0

    :cond_1
    const-string v1, "denied"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static ˑﹳ(C)Lﹶﾞ/ʽⁱ;
    .locals 1

    .prologue
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    sget-object p0, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    return-object p0

    :cond_0
    sget-object p0, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    return-object p0

    :cond_1
    sget-object p0, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    return-object p0

    :cond_2
    sget-object p0, Lﹶﾞ/ʽⁱ;->ʽʽ:Lﹶﾞ/ʽⁱ;

    return-object p0
.end method

.method public static ᵔᵢ(Lﹶﾞ/ʽⁱ;)C
    .locals 1

    .prologue
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x31

    return p0

    :cond_1
    const/16 p0, 0x30

    return p0

    :cond_2
    const/16 p0, 0x2b

    return p0

    :cond_3
    :goto_0
    const/16 p0, 0x2d

    return p0
.end method

.method public static ⁱˊ(ILandroid/os/Bundle;)Lﹶﾞ/ᐧˎ;
    .locals 6

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lﹶﾞ/ᐧˎ;

    invoke-direct {p1, p0}, Lﹶﾞ/ᐧˎ;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, v4, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lﹶﾞ/ᐧˎ;->ˈ(Ljava/lang/String;)Lﹶﾞ/ʽⁱ;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lﹶﾞ/ᐧˎ;

    invoke-direct {p1, v0, p0}, Lﹶﾞ/ᐧˎ;-><init>(Ljava/util/EnumMap;I)V

    return-object p1
.end method

.method public static ﹳٴ(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/16 v0, -0x1e

    if-eq p0, v0, :cond_6

    const/16 v0, -0x14

    if-eq p0, v0, :cond_5

    const/16 v0, -0xa

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const-string p0, "OTHER"

    return-object p0

    :cond_0
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_1
    const-string p0, "REMOTE_CONFIG"

    return-object p0

    :cond_2
    const-string p0, "1P_INIT"

    return-object p0

    :cond_3
    const-string p0, "1P_API"

    return-object p0

    :cond_4
    const-string p0, "MANIFEST"

    return-object p0

    :cond_5
    const-string p0, "API"

    return-object p0

    :cond_6
    const-string p0, "TCF"

    return-object p0
.end method

.method public static ﾞʻ(II)Z
    .locals 2

    .prologue
    const/16 v0, -0x1e

    const/16 v1, -0x14

    if-ne p0, v1, :cond_0

    if-eq p1, v0, :cond_3

    move p0, v1

    :cond_0
    if-ne p0, v0, :cond_1

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    if-lt p0, p1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    instance-of v0, p1, Lﹶﾞ/ᐧˎ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lﹶﾞ/ᐧˎ;

    sget-object v0, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v0, v0, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p1, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v5, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    iget p1, p1, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    if-ne v0, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    mul-int/lit8 v1, v1, 0x11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʽⁱ;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    invoke-static {v1}, Lﹶﾞ/ᐧˎ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ʽⁱ;

    if-nez v4, :cond_0

    sget-object v4, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(Lﹶﾞ/ⁱˉ;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹶﾞ/ʽⁱ;

    sget-object v0, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ˆʾ(Lﹶﾞ/ᐧˎ;)Lﹶﾞ/ᐧˎ;
    .locals 8

    .prologue
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    iget-object v5, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʽⁱ;

    iget-object v6, p1, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lﹶﾞ/ʽⁱ;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_5

    sget-object v7, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq v6, v7, :cond_5

    sget-object v7, Lﹶﾞ/ʽⁱ;->ʽʽ:Lﹶﾞ/ʽⁱ;

    if-ne v5, v7, :cond_2

    :goto_1
    move-object v5, v6

    goto :goto_3

    :cond_2
    if-eq v6, v7, :cond_5

    sget-object v7, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    if-eq v5, v7, :cond_4

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    sget-object v5, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v7

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance p1, Lﹶﾞ/ᐧˎ;

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lﹶﾞ/ᐧˎ;-><init>(Ljava/util/EnumMap;I)V

    return-object p1
.end method

.method public final ٴﹶ(Lﹶﾞ/ᐧˎ;)Lﹶﾞ/ᐧˎ;
    .locals 7

    .prologue
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lﹶﾞ/ⁱˉ;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v5, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʽⁱ;

    sget-object v6, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    if-ne v5, v6, :cond_0

    iget-object v5, p1, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʽⁱ;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lﹶﾞ/ᐧˎ;

    iget v1, p0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    invoke-direct {p1, v0, v1}, Lﹶﾞ/ᐧˎ;-><init>(Ljava/util/EnumMap;I)V

    return-object p1
.end method

.method public final ᵎﹶ()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

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

.method public final ﾞᴵ()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lﹶﾞ/ʾﾞ;->ᴵˊ:Lﹶﾞ/ʾﾞ;

    iget-object v1, v1, Lﹶﾞ/ʾﾞ;->ʾˋ:[Lﹶﾞ/ⁱˉ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget-object v5, p0, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ʽⁱ;

    const/16 v5, 0x2d

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    goto :goto_1

    :cond_0
    const/16 v5, 0x30

    goto :goto_1

    :cond_1
    const/16 v5, 0x31

    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
