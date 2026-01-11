.class public final Lﹶٴ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# static fields
.field public static final ⁱˊ:Lﹶٴ/ᵔʾ;

.field public static final ﹳٴ:Lﹶٴ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶٴ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶٴ/ʽ;->ﹳٴ:Lﹶٴ/ʽ;

    new-instance v0, Lﹶٴ/ᵔʾ;

    const-string v1, "kotlin.Double"

    sget-object v2, Lˉﾞ/ⁱˊ;->ˈ:Lˉﾞ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lﹶٴ/ᵔʾ;-><init>(Ljava/lang/String;Lˉﾞ/ʽ;)V

    sput-object v0, Lﹶٴ/ʽ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget-object v0, p1, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ʽˑ;

    invoke-virtual {v0}, Lcom/parse/ʽˑ;->ᵔʾ()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p1, Lcom/parse/ʽˑ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˈˎ/ﹳٴ;

    iget-object p1, p1, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected special floating-point value "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". By default, non-finite floating point values are prohibited because they do not conform JSON specification"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, p1, v3, v1}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v2

    :catch_0
    const-string p1, "Failed to parse type \'double\' for input \'"

    const/16 v4, 0x27

    invoke-static {v4, p1, v1}, Lʼﾞ/ˊˋ;->ˉˆ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v0, p1, v3, v1}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v2
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lﹶٴ/ʽ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p2, p1, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast p2, Lar/tvplayer/core/domain/ʽﹳ;

    iget-boolean v2, p1, Lʻʻ/ʽ;->ﹳٴ:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ʾᵎ;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lʼٴ/ʾᵎ;->יـ(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p1, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast p1, Lـˎ/ˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p2, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lʼٴ/ʾᵎ;

    invoke-virtual {p2}, Lʼٴ/ʾᵎ;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lkotlinx/serialization/json/internal/JsonEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected special floating-point value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'\nCurrent output: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    invoke-static {p2, p1}, Lᴵˉ/ˑﹳ;->ˑﹳ(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
