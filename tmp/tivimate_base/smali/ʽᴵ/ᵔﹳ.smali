.class public final Lʽᴵ/ᵔﹳ;
.super Lʽᴵ/ﹳᐧ;
.source "SourceFile"


# static fields
.field public static final ᵎⁱ:[Ljava/lang/String;


# instance fields
.field public ˉٴ:Ljava/lang/String;

.field public final ٴᵢ:Lˊᐧ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lʽᴵ/ᵔﹳ;->ᵎⁱ:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    sget-object v2, Lʽᴵ/ᵔﹳ;->ᵎⁱ:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "\\u%04x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lʽᴵ/ᵔﹳ;->ᵎⁱ:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ᵎﹶ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lʽᴵ/ﹳᐧ;->ʽʽ:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    const/4 v0, -0x1

    iput v0, p0, Lʽᴵ/ﹳᐧ;->ˊʻ:I

    iput-object p1, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    const/4 p1, 0x1

    iput p1, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    const/4 p1, 0x0

    const/4 v0, 0x6

    aput v0, v1, p1

    return-void
.end method

.method public static ﹶᐧ(Lˊᐧ/ᵎﹶ;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    sget-object v5, Lʽᴵ/ᵔﹳ;->ᵎⁱ:[Ljava/lang/String;

    aget-object v4, v5, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_0
    const/16 v5, 0x2028

    if-ne v4, v5, :cond_1

    const-string v4, "\\u2028"

    goto :goto_1

    :cond_1
    const/16 v5, 0x2029

    if-ne v4, v5, :cond_4

    const-string v4, "\\u2029"

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p0, v3, v2, p1}, Lˊᐧ/ᵎﹶ;->ʾᵎ(IILjava/lang/String;)Lˊᐧ/ᵎﹶ;

    :cond_3
    invoke-interface {p0, v4}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    add-int/lit8 v3, v2, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-ge v3, v1, :cond_6

    invoke-interface {p0, v3, v1, p1}, Lˊᐧ/ᵎﹶ;->ʾᵎ(IILjava/lang/String;)Lˊᐧ/ᵎﹶ;

    :cond_6
    invoke-interface {p0, v0}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ʾˋ;->close()V

    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 2

    .prologue
    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ᵎﹶ;->flush()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʽ()Lʽᴵ/ᵔﹳ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    const/4 v0, 0x2

    const/16 v1, 0x5b

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lʽᴵ/ᵔﹳ;->ˊᵔ(IIC)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ﹳᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʾˋ()Lʽᴵ/ᵔﹳ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    iget-object v0, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    iget v1, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ﹳᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʿᵢ()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ˈٴ()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    iget-object v3, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    const/4 v3, 0x7

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sink from valueSink() was not closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, ":"

    invoke-interface {v3, v0}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/16 v0, 0x2c

    invoke-interface {v3, v0}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    :cond_5
    :goto_0
    iget-object v0, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    iget v3, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    sub-int/2addr v3, v2

    aput v1, v0, v3

    return-void
.end method

.method public final ˈʿ(Ljava/lang/Number;)Lʽᴵ/ᵔﹳ;
    .locals 3

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʾˋ()Lʽᴵ/ᵔﹳ;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean p1, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    invoke-virtual {p0, v0}, Lʽᴵ/ᵔﹳ;->ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget-object p1, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1, v0}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    iget-object p1, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˉˆ()Lʽᴵ/ᵔﹳ;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    const/4 v0, 0x5

    const/16 v1, 0x7d

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lʽᴵ/ᵔﹳ;->ᴵʼ(IIC)V

    return-object p0
.end method

.method public final ˊᵔ(IIC)V
    .locals 3

    .prologue
    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    iget v1, p0, Lʽᴵ/ﹳᐧ;->ˊʻ:I

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    if-eq v0, p1, :cond_0

    if-ne v0, p2, :cond_1

    :cond_0
    not-int p1, v1

    iput p1, p0, Lʽᴵ/ﹳᐧ;->ˊʻ:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget p2, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    iget-object v0, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    array-length v1, v0

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x100

    if-eq p2, v1, :cond_3

    array-length p2, v0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    iput-object p2, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    iget-object p2, p0, Lʽᴵ/ﹳᐧ;->ʽʽ:[Ljava/lang/String;

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lʽᴵ/ﹳᐧ;->ʽʽ:[Ljava/lang/String;

    iget-object p2, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    iput-object p2, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    :goto_0
    iget-object p2, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    aput p1, p2, v0

    iget-object p1, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    const/4 p2, 0x0

    aput p2, p1, v0

    iget-object p1, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1, p3}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    return-void

    :cond_3
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Nesting too deep at "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ﹳᐧ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": circular reference?"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;
    .locals 2

    .prologue
    if-eqz p1, :cond_3

    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ˈٴ()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    iget-object v0, p0, Lʽᴵ/ﹳᐧ;->ʽʽ:[Ljava/lang/String;

    iget v1, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ـᵎ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ˈٴ()I

    move-result v0

    const/4 v1, 0x5

    iget-object v2, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2c

    invoke-interface {v2, v0}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lʽᴵ/ﹳᐧ;->ᴵˊ:[I

    iget v1, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    aput v3, v0, v1

    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    invoke-static {v2, v0}, Lʽᴵ/ᵔﹳ;->ﹶᐧ(Lˊᐧ/ᵎﹶ;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final ᴵʼ(IIC)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ˈٴ()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    if-nez p1, :cond_3

    iget p1, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    iget p2, p0, Lʽᴵ/ﹳᐧ;->ˊʻ:I

    not-int p2, p2

    if-ne p1, p2, :cond_2

    iput p2, p0, Lʽᴵ/ﹳᐧ;->ˊʻ:I

    return-void

    :cond_2
    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    iget-object v0, p0, Lʽᴵ/ﹳᐧ;->ʽʽ:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    iget-object p2, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    add-int/lit8 p1, p1, -0x2

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    iget-object p1, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1, p3}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lʽᴵ/ᵔﹳ;->ˉٴ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᴵˑ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;
    .locals 2

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʾˋ()Lʽᴵ/ᵔﹳ;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    invoke-virtual {p0, p1}, Lʽᴵ/ᵔﹳ;->ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-static {v0, p1}, Lʽᴵ/ᵔﹳ;->ﹶᐧ(Lˊᐧ/ᵎﹶ;Ljava/lang/String;)V

    iget-object p1, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    iget v0, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public final ᵎˊ(J)Lʽᴵ/ᵔﹳ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʽᴵ/ᵔﹳ;->ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget-object v0, p0, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    iget-object p1, p0, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    iget p2, p0, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method

.method public final ᵎﹶ()Lʽᴵ/ᵔﹳ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    const/4 v0, 0x5

    const/16 v1, 0x7b

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lʽᴵ/ᵔﹳ;->ˊᵔ(IIC)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lʽᴵ/ﹳᐧ;->ﹳᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
