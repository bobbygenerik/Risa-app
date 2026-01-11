.class public final Lʿʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public ʽʽ:[B

.field public final ʾˋ:Lﹳˋ/ˉˆ;

.field public ˈٴ:Lﹳˋ/ᵔᵢ;

.field public final synthetic ˊʻ:Lʿʼ/ⁱˊ;

.field public ᴵˊ:Lﹳˋ/ʽﹳ;

.field public final ᴵᵔ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lʿʼ/ⁱˊ;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʼ/ﹳٴ;->ˊʻ:Lʿʼ/ⁱˊ;

    const-class p1, Lﹳˋ/ˉʿ;

    invoke-static {p1}, Lﹳˋ/ʻٴ;->ﹳٴ(Ljava/lang/Class;)Lﹳˋ/ˉˆ;

    move-result-object p1

    iput-object p1, p0, Lʿʼ/ﹳٴ;->ʾˋ:Lﹳˋ/ˉˆ;

    iput-object p2, p0, Lʿʼ/ﹳٴ;->ᴵᵔ:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lʿʼ/ﹳٴ;->ﹳٴ(Z)V

    :goto_0
    iget-object p1, p0, Lʿʼ/ﹳٴ;->ᴵˊ:Lﹳˋ/ʽﹳ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lﹳˋ/ʽﹳ;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lʿʼ/ﹳٴ;->ᴵˊ:Lﹳˋ/ʽﹳ;

    invoke-virtual {p1}, Lﹳˋ/ʽﹳ;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳˋ/ᵔᵢ;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lʿʼ/ﹳٴ;->ﹳٴ(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lʿʼ/ﹳٴ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʿʼ/ﹳٴ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʿʼ/ﹳٴ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʿʼ/ﹳٴ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    :goto_0
    iget-object v1, p0, Lʿʼ/ﹳٴ;->ᴵˊ:Lﹳˋ/ʽﹳ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lﹳˋ/ʽﹳ;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʿʼ/ﹳٴ;->ᴵˊ:Lﹳˋ/ʽﹳ;

    invoke-virtual {v1}, Lﹳˋ/ʽﹳ;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳˋ/ᵔᵢ;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lʿʼ/ﹳٴ;->ﹳٴ(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lʿʼ/ﹳٴ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ﹳٴ(Z)V
    .locals 13

    .prologue
    iget-object v0, p0, Lʿʼ/ﹳٴ;->ˊʻ:Lʿʼ/ⁱˊ;

    iget-object v1, v0, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    if-eqz p1, :cond_0

    sget-object p1, Lˊʾ/ٴﹶ;->ᴵˊ:Lˊʾ/ٴﹶ;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    move-object v10, p1

    goto :goto_1

    :cond_0
    const-class p1, Lˊʾ/ٴﹶ;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lʿʼ/ﹳٴ;->ʾˋ:Lﹳˋ/ˉˆ;

    invoke-interface {p1}, Lﹳˋ/ˉˆ;->ﹳٴ()I

    move-result v9

    iget-object v4, v0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    new-instance v2, Lˊʾ/ﾞʻ;

    iget-object v3, v1, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    move-object v8, v4

    iget-wide v4, v1, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v6, v1, Lʿʼ/ﾞʻ;->ʽʽ:J

    iget v12, v1, Lʿʼ/ﾞʻ;->ٴʼ:I

    iget-object v11, p0, Lʿʼ/ﹳٴ;->ᴵᵔ:Ljava/lang/String;

    invoke-direct/range {v2 .. v12}, Lˊʾ/ﾞʻ;-><init>(Lʼﹳ/ʽ;JJLʼﹳ/ᵔᵢ;ILjava/util/EnumSet;Ljava/lang/String;I)V

    sget-object v5, Lʿʼ/ﾞʻ;->ᵔٴ:Lٴﾞ/ˆʾ;

    iget-wide v6, v1, Lʿʼ/ﾞʻ;->ᵎˊ:J

    const-string v3, "Query directory"

    move-object v4, v8

    invoke-virtual/range {v1 .. v7}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    move-result-object v0

    check-cast v0, Lˊʾ/ˉʿ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-wide v1, v1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    iget-object v0, v0, Lˊʾ/ˉʿ;->ˊʻ:[B

    const-wide v3, 0x80000006L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const-wide v3, 0xc000000fL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʿʼ/ﹳٴ;->ʽʽ:[B

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iput-object v0, p0, Lʿʼ/ﹳٴ;->ʽʽ:[B

    sget-object v1, Lﹳˋ/ʻٴ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v1, Lﹳˋ/ʽﹳ;

    invoke-direct {v1, v0, p1}, Lﹳˋ/ʽﹳ;-><init>([BLﹳˋ/ˉˆ;)V

    iput-object v1, p0, Lʿʼ/ﹳٴ;->ᴵˊ:Lﹳˋ/ʽﹳ;

    return-void

    :cond_2
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lʿʼ/ﹳٴ;->ᴵˊ:Lﹳˋ/ʽﹳ;

    iput-object p1, p0, Lʿʼ/ﹳٴ;->ʽʽ:[B

    return-void
.end method
