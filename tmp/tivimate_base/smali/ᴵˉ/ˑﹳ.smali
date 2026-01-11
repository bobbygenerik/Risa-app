.class public abstract Lᴵˉ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lᴵˉ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵˉ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˉ/ˑﹳ;->ﹳٴ:Lᴵˉ/ﾞᴵ;

    return-void
.end method

.method public static final ʽ(Lcom/parse/ʽˑ;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Trailing comma before the end of JSON "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/parse/ʽˑ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "Trailing commas are non-complaint JSON and not allowed by default. Use \'allowTrailingCommas = true\' in \'Json {}\' builder to support them."

    invoke-virtual {p0, v0, p1, v1}, Lcom/parse/ʽˑ;->ᴵˊ(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic ˈ(Lcom/parse/ʽˑ;)V
    .locals 1

    const-string v0, "object"

    invoke-static {p0, v0}, Lᴵˉ/ˑﹳ;->ʽ(Lcom/parse/ʽˑ;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final ˑﹳ(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "....."

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3c

    if-gtz p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, p1, -0x1e

    add-int/lit8 p1, p1, 0x1e

    const-string v2, ""

    if-gtz v0, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt p1, v4, :cond_4

    move-object v1, v2

    :cond_4
    invoke-static {v3}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le p1, v3, :cond_6

    move p1, v3

    :cond_6
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ᵎﹶ(Lˈˎ/ﹳٴ;Lˉﾞ/ˈ;)Lᴵˉ/ᵔᵢ;
    .locals 2

    .prologue
    invoke-interface {p1}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v0

    instance-of v1, v0, Lˉﾞ/ﹳٴ;

    if-eqz v1, :cond_0

    sget-object p0, Lᴵˉ/ᵔᵢ;->ˊʻ:Lᴵˉ/ᵔᵢ;

    return-object p0

    :cond_0
    sget-object v1, Lˉﾞ/ﾞᴵ;->ˈ:Lˉﾞ/ﾞᴵ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lᴵˉ/ᵔᵢ;->ˈٴ:Lᴵˉ/ᵔᵢ;

    return-object p0

    :cond_1
    sget-object v1, Lˉﾞ/ﾞᴵ;->ˑﹳ:Lˉﾞ/ﾞᴵ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object p1

    iget-object v0, p0, Lˈˎ/ﹳٴ;->ⁱˊ:Lᵔﹶ/ᴵˊ;

    invoke-static {p1, v0}, Lᴵˉ/ˑﹳ;->ﹳٴ(Lˉﾞ/ˈ;Lᵔﹶ/ᴵˊ;)Lˉﾞ/ˈ;

    move-result-object p1

    invoke-interface {p1}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v0

    instance-of v1, v0, Lˉﾞ/ʽ;

    if-nez v1, :cond_3

    sget-object v1, Lˉﾞ/ˑﹳ;->ˈ:Lˉﾞ/ˑﹳ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/serialization/json/internal/JsonEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value of type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' can\'t be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'.\nUse \'allowStructuredMapKeys = true\' in \'Json {}\' builder to convert such maps to [key1, value1, key2, value2,...] arrays."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Lᴵˉ/ᵔᵢ;->ᴵᵔ:Lᴵˉ/ᵔᵢ;

    return-object p0

    :cond_4
    sget-object p0, Lᴵˉ/ᵔᵢ;->ʽʽ:Lᴵˉ/ᵔᵢ;

    return-object p0
.end method

.method public static final ⁱˊ(C)B
    .locals 1

    .prologue
    const/16 v0, 0x7e

    if-ge p0, v0, :cond_0

    sget-object v0, Lᴵˉ/ʽ;->ⁱˊ:[B

    aget-byte p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final ﹳٴ(Lˉﾞ/ˈ;Lᵔﹶ/ᴵˊ;)Lˉﾞ/ˈ;
    .locals 2

    .prologue
    invoke-interface {p0}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v0

    sget-object v1, Lˉﾞ/ˑﹳ;->ʽ:Lˉﾞ/ˑﹳ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lˉᵎ/ⁱˊ;->ᵔﹳ(Lˉﾞ/ˈ;)Lᐧˆ/ⁱˊ;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lˉﾞ/ˈ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object p0

    invoke-static {p0, p1}, Lᴵˉ/ˑﹳ;->ﹳٴ(Lˉﾞ/ˈ;Lᵔﹶ/ᴵˊ;)Lˉﾞ/ˈ;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final ﾞᴵ(Lˈˎ/ﹳٴ;Lˉﾞ/ˈ;)V
    .locals 1

    .prologue
    invoke-interface {p1}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object p1

    sget-object v0, Lˉﾞ/ﾞᴵ;->ʽ:Lˉﾞ/ﾞᴵ;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
