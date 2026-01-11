.class public final Lﹶˎ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ٴᵢ;


# static fields
.field public static final ᵎﹶ:Lʽⁱ/ﹳᐧ;

.field public static final ﾞᴵ:Lʽⁱ/ﹳᐧ;


# instance fields
.field public ʽ:Lʽⁱ/ﹳᐧ;

.field public ˈ:[B

.field public ˑﹳ:I

.field public final ⁱˊ:Lʽⁱ/ﹳᐧ;

.field public final ﹳٴ:Lﹶˎ/ᵔʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v1, "application/id3"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v1, Lʽⁱ/ﹳᐧ;

    invoke-direct {v1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    sput-object v1, Lﹶˎ/ˉʿ;->ﾞᴵ:Lʽⁱ/ﹳᐧ;

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v1, Lʽⁱ/ﹳᐧ;

    invoke-direct {v1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    sput-object v1, Lﹶˎ/ˉʿ;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    return-void
.end method

.method public constructor <init>(Lﹶˎ/ᵔʾ;I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ˉʿ;->ﹳٴ:Lﹶˎ/ᵔʾ;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    sget-object p1, Lﹶˎ/ˉʿ;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iput-object p1, p0, Lﹶˎ/ˉʿ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown metadataType: "

    invoke-static {p2, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lﹶˎ/ˉʿ;->ﾞᴵ:Lʽⁱ/ﹳᐧ;

    iput-object p1, p0, Lﹶˎ/ˉʿ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    :goto_0
    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    iput p1, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ˆʾ;IZ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lﹶˎ/ˉʿ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method

.method public final ˈ(Lʽⁱ/ﹳᐧ;)V
    .locals 1

    iput-object p1, p0, Lﹶˎ/ˉʿ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object p1, p0, Lﹶˎ/ˉʿ;->ﹳٴ:Lﹶˎ/ᵔʾ;

    iget-object v0, p0, Lﹶˎ/ˉʿ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p1, v0}, Lﹳᵢ/ᴵˑ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final synthetic ˑﹳ(ILᐧˎ/ﹳᐧ;)V
    .locals 0

    invoke-static {p0, p2, p1}, Lˉˆ/ٴᴵ;->ﹳٴ(Lˊﾞ/ٴᵢ;Lᐧˎ/ﹳᐧ;I)V

    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;II)V
    .locals 2

    .prologue
    iget p3, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    add-int/2addr p3, p2

    iget-object v0, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    array-length v1, v0

    if-ge v1, p3, :cond_0

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    iput-object p3, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    :cond_0
    iget-object p3, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    iget v0, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    invoke-virtual {p1, p3, v0, p2}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget p1, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    add-int/2addr p1, p2

    iput p1, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    return-void
.end method

.method public final ﹳٴ(JIIILˊﾞ/ˊʻ;)V
    .locals 9

    .prologue
    iget-object v0, p0, Lﹶˎ/ˉʿ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    sub-int/2addr v0, p5

    sub-int p4, v0, p4

    iget-object v1, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    invoke-static {v1, p4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p4

    new-instance v1, Lᐧˎ/ﹳᐧ;

    invoke-direct {v1, p4}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iget-object p4, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    const/4 v2, 0x0

    invoke-static {p4, v0, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p5, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    iget-object p4, p0, Lﹶˎ/ˉʿ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object p4, p4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object p5, p0, Lﹶˎ/ˉʿ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    iget-object v0, p5, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object p5, p5, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {p4, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lﹶˎ/ˉʿ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object p4, p4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "HlsSampleStreamWrapper"

    if-eqz p4, :cond_2

    invoke-static {v1}, Lʻʼ/ⁱˊ;->ٴʼ(Lᐧˎ/ﹳᐧ;)Lʻʼ/ﹳٴ;

    move-result-object p4

    invoke-virtual {p4}, Lʻʼ/ﹳٴ;->ⁱˊ()Lʽⁱ/ﹳᐧ;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {p5, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lᐧˎ/ﹳᐧ;

    invoke-virtual {p4}, Lʻʼ/ﹳٴ;->ʽ()[B

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p4}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v6

    iget-object v2, p0, Lﹶˎ/ˉʿ;->ﹳٴ:Lﹶˎ/ᵔʾ;

    invoke-static {v2, v1, v6}, Lˉˆ/ٴᴵ;->ﹳٴ(Lˊﾞ/ٴᵢ;Lᐧˎ/ﹳᐧ;I)V

    const/4 v7, 0x0

    move-wide v3, p1

    move v5, p3

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lﹳᵢ/ᴵˑ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void

    :cond_1
    invoke-virtual {p4}, Lʻʼ/ﹳٴ;->ⁱˊ()Lʽⁱ/ﹳᐧ;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ignoring EMSG. Expected it to contain wrapped "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but actual wrapped format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lﹶˎ/ˉʿ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object p2, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I
    .locals 3

    .prologue
    iget v0, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    array-length v2, v1

    if-ge v2, v0, :cond_0

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    :cond_0
    iget-object v0, p0, Lﹶˎ/ˉʿ;->ˈ:[B

    iget v1, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    invoke-interface {p1, v0, v1, p2}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    add-int/2addr p2, p1

    iput p2, p0, Lﹶˎ/ˉʿ;->ˑﹳ:I

    return p1
.end method
