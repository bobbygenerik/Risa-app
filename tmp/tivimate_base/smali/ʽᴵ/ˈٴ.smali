.class public final Lʽᴵ/ˈٴ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# instance fields
.field public final ʽ:[Ljava/lang/Enum;

.field public final ˈ:Lﹶﾞ/ⁱי;

.field public final ⁱˊ:[Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ˈٴ;->ﹳٴ:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lʽᴵ/ˈٴ;->ʽ:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lʽᴵ/ˈٴ;->ⁱˊ:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lʽᴵ/ˈٴ;->ʽ:[Ljava/lang/Enum;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lʽᴵ/ˈٴ;->ⁱˊ:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sget-object v4, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    const-class v4, Lʽᴵ/ʼˎ;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lʽᴵ/ʼˎ;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lʽᴵ/ʼˎ;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lʽᴵ/ˈٴ;->ⁱˊ:[Ljava/lang/String;

    invoke-static {v0}, Lﹶﾞ/ⁱי;->ʾᵎ([Ljava/lang/String;)Lﹶﾞ/ⁱי;

    move-result-object v0

    iput-object v0, p0, Lʽᴵ/ˈٴ;->ˈ:Lﹶﾞ/ⁱי;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Missing field in "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʽᴵ/ˈٴ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/Enum;

    iget-object v0, p0, Lʽᴵ/ˈٴ;->ⁱˊ:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lʽᴵ/ﹳᐧ;->ᴵˑ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    return-void
.end method

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p1

    check-cast v0, Lʽᴵ/ʼᐧ;

    iget v1, v0, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lʽᴵ/ʼᐧ;->י()I

    move-result v1

    :cond_0
    const/16 v2, 0x8

    const/4 v3, -0x1

    if-lt v1, v2, :cond_5

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lʽᴵ/ˈٴ;->ˈ:Lﹶﾞ/ⁱי;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lʽᴵ/ʼᐧ;->ˑ(Ljava/lang/String;Lﹶﾞ/ⁱי;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lʽᴵ/ʼᐧ;->ᴵᵔ:Lˊᐧ/ᵔᵢ;

    iget-object v5, v4, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˊᐧ/ˏי;

    invoke-interface {v1, v5}, Lˊᐧ/ᵔᵢ;->ـˏ(Lˊᐧ/ˏי;)I

    move-result v1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x0

    iput v2, v0, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iget-object v2, v0, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget v0, v0, Lʽᴵ/ˉˆ;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lʽᴵ/ʼᐧ;->ᴵˑ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lʽᴵ/ʼᐧ;->ˑ(Ljava/lang/String;Lﹶﾞ/ⁱי;)I

    move-result v4

    if-ne v4, v3, :cond_4

    iput v2, v0, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iput-object v1, v0, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    iget-object v1, v0, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget v0, v0, Lʽᴵ/ˉˆ;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_6

    iget-object p1, p0, Lʽᴵ/ˈٴ;->ʽ:[Ljava/lang/Enum;

    aget-object p1, p1, v0

    return-object p1

    :cond_6
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ᴵˑ()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected one of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lʽᴵ/ˈٴ;->ⁱˊ:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
