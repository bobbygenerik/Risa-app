.class public final Lﹶٴ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# static fields
.field public static final ⁱˊ:Lﹶٴ/ᵔʾ;

.field public static final ﹳٴ:Lﹶٴ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶٴ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶٴ/ﹳٴ;->ﹳٴ:Lﹶٴ/ﹳٴ;

    new-instance v0, Lﹶٴ/ᵔʾ;

    const-string v1, "kotlin.Boolean"

    sget-object v2, Lˉﾞ/ⁱˊ;->ʽ:Lˉﾞ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lﹶٴ/ᵔʾ;-><init>(Ljava/lang/String;Lˉﾞ/ʽ;)V

    sput-object v0, Lﹶٴ/ﹳٴ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 11

    .prologue
    iget-object p1, p1, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lcom/parse/ʽˑ;

    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ˈʿ()I

    move-result v0

    iget-object v1, p1, Lcom/parse/ʽˑ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "EOF"

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-eq v0, v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ne v2, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ᵔٴ(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_6

    const/4 v9, -0x1

    if-eq v0, v9, :cond_6

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    const/16 v10, 0x66

    if-eq v0, v10, :cond_2

    const/16 v10, 0x74

    if-ne v0, v10, :cond_1

    const-string v0, "rue"

    invoke-virtual {p1, v9, v0}, Lcom/parse/ʽˑ;->ʼˎ(ILjava/lang/String;)V

    move v0, v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ᵔʾ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6, v5}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v4

    :cond_2
    const-string v0, "alse"

    invoke-virtual {p1, v9, v0}, Lcom/parse/ʽˑ;->ʼˎ(ILjava/lang/String;)V

    move v0, v6

    :goto_1
    if-eqz v2, :cond_5

    iget v2, p1, Lcom/parse/ʽˑ;->ᴵˊ:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v2, v9, :cond_4

    iget v2, p1, Lcom/parse/ʽˑ;->ᴵˊ:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_3

    iget v1, p1, Lcom/parse/ʽˑ;->ᴵˊ:I

    add-int/2addr v1, v8

    iput v1, p1, Lcom/parse/ʽˑ;->ᴵˊ:I

    goto :goto_2

    :cond_3
    const-string v0, "Expected closing quotation mark"

    invoke-static {p1, v0, v6, v5}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v4

    :cond_4
    invoke-static {p1, v3, v6, v5}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v4

    :cond_5
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {p1, v3, v6, v5}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v4

    :cond_7
    invoke-static {p1, v3, v6, v5}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    throw v4
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lﹶٴ/ﹳٴ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean v0, p1, Lʻʻ/ʽ;->ﹳٴ:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object p1, p1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼٴ/ʾᵎ;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lʼٴ/ʾᵎ;->יـ(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
