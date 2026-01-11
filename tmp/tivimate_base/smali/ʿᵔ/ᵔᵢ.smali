.class public final Lʿᵔ/ᵔᵢ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ˆﾞ:Lⁱᵎ/ᵔᵢ;

.field public ˉٴ:I

.field public ˊʻ:[B

.field public synthetic ٴʼ:Ljava/lang/Object;

.field public ٴᵢ:I

.field public ᴵᵔ:Lʽʿ/ˆʾ;

.field public final synthetic ᵎˊ:[Lᵎˈ/ᵎﹶ;

.field public ᵎⁱ:I

.field public final synthetic ᵔי:Lʿᵢ/ˉٴ;

.field public final synthetic ᵔٴ:Lᵎˈ/ᵔᵢ;


# direct methods
.method public constructor <init>([Lᵎˈ/ᵎﹶ;Lʿᵢ/ˉٴ;Lⁱᵎ/ᵔᵢ;Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʿᵔ/ᵔᵢ;->ᵎˊ:[Lᵎˈ/ᵎﹶ;

    iput-object p2, p0, Lʿᵔ/ᵔᵢ;->ᵔי:Lʿᵢ/ˉٴ;

    iput-object p3, p0, Lʿᵔ/ᵔᵢ;->ˆﾞ:Lⁱᵎ/ᵔᵢ;

    iput-object p4, p0, Lʿᵔ/ᵔᵢ;->ᵔٴ:Lᵎˈ/ᵔᵢ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵔ/ᵔᵢ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵔ/ᵔᵢ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵔ/ᵔᵢ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 6

    new-instance v0, Lʿᵔ/ᵔᵢ;

    iget-object v3, p0, Lʿᵔ/ᵔᵢ;->ˆﾞ:Lⁱᵎ/ᵔᵢ;

    iget-object v4, p0, Lʿᵔ/ᵔᵢ;->ᵔٴ:Lᵎˈ/ᵔᵢ;

    iget-object v1, p0, Lʿᵔ/ᵔᵢ;->ᵎˊ:[Lᵎˈ/ᵎﹶ;

    iget-object v2, p0, Lʿᵔ/ᵔᵢ;->ᵔי:Lʿᵢ/ˉٴ;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lʿᵔ/ᵔᵢ;-><init>([Lᵎˈ/ᵎﹶ;Lʿᵢ/ˉٴ;Lⁱᵎ/ᵔᵢ;Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)V

    iput-object p1, v0, Lʿᵔ/ᵔᵢ;->ٴʼ:Ljava/lang/Object;

    return-object v0
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    sget-object v1, Lʿᵔ/ⁱˊ;->ʽ:Lʻᴵ/ﹳٴ;

    iget v2, v0, Lʿᵔ/ᵔᵢ;->ᵎⁱ:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    sget-object v7, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget v2, v0, Lʿᵔ/ᵔᵢ;->ˉٴ:I

    iget v8, v0, Lʿᵔ/ᵔᵢ;->ٴᵢ:I

    iget-object v9, v0, Lʿᵔ/ᵔᵢ;->ˊʻ:[B

    iget-object v10, v0, Lʿᵔ/ᵔᵢ;->ᴵᵔ:Lʽʿ/ˆʾ;

    iget-object v11, v0, Lʿᵔ/ᵔᵢ;->ٴʼ:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v2, v0, Lʿᵔ/ᵔᵢ;->ˉٴ:I

    iget v8, v0, Lʿᵔ/ᵔᵢ;->ٴᵢ:I

    iget-object v9, v0, Lʿᵔ/ᵔᵢ;->ˊʻ:[B

    iget-object v10, v0, Lʿᵔ/ᵔᵢ;->ᴵᵔ:Lʽʿ/ˆʾ;

    iget-object v11, v0, Lʿᵔ/ᵔᵢ;->ٴʼ:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    check-cast v12, Lʽʿ/ᵔʾ;

    iget-object v12, v12, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v2, v0, Lʿᵔ/ᵔᵢ;->ٴʼ:Ljava/lang/Object;

    check-cast v2, Lᴵי/ـˆ;

    iget-object v8, v0, Lʿᵔ/ᵔᵢ;->ᵎˊ:[Lᵎˈ/ᵎﹶ;

    array-length v8, v8

    if-nez v8, :cond_4

    goto :goto_5

    :cond_4
    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v11, v4, v8, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v9, 0x6

    invoke-static {v8, v4, v9}, Lʼ/ᵎﹶ;->ˑﹳ(III)Lʽʿ/ﾞᴵ;

    move-result-object v16

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v15, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v14, v4

    :goto_1
    if-ge v14, v8, :cond_5

    new-instance v12, Lʿᵔ/ᵎﹶ;

    iget-object v13, v0, Lʿᵔ/ᵔᵢ;->ᵎˊ:[Lᵎˈ/ᵎﹶ;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lʿᵔ/ᵎﹶ;-><init>([Lᵎˈ/ᵎﹶ;ILjava/util/concurrent/atomic/AtomicInteger;Lʽʿ/ﾞᴵ;Lˈי/ˈ;)V

    invoke-static {v2, v3, v12, v5}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    new-array v9, v8, [B

    move v2, v4

    move-object/from16 v10, v16

    :cond_6
    :goto_2
    add-int/2addr v2, v6

    int-to-byte v2, v2

    iput-object v11, v0, Lʿᵔ/ᵔᵢ;->ٴʼ:Ljava/lang/Object;

    iput-object v10, v0, Lʿᵔ/ᵔᵢ;->ᴵᵔ:Lʽʿ/ˆʾ;

    iput-object v9, v0, Lʿᵔ/ᵔᵢ;->ˊʻ:[B

    iput v8, v0, Lʿᵔ/ᵔᵢ;->ٴᵢ:I

    iput v2, v0, Lʿᵔ/ᵔᵢ;->ˉٴ:I

    iput v6, v0, Lʿᵔ/ᵔᵢ;->ᵎⁱ:I

    invoke-interface {v10, v0}, Lʽʿ/ʽﹳ;->ˆʾ(Lʿᵔ/ᵔᵢ;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_7

    goto :goto_7

    :cond_7
    :goto_3
    instance-of v13, v12, Lʽʿ/ˉʿ;

    if-nez v13, :cond_8

    goto :goto_4

    :cond_8
    move-object v12, v3

    :goto_4
    check-cast v12, Lﹶˈ/יـ;

    if-nez v12, :cond_9

    :goto_5
    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v1

    :cond_9
    iget v13, v12, Lﹶˈ/יـ;->ﹳٴ:I

    aget-object v14, v11, v13

    iget-object v12, v12, Lﹶˈ/יـ;->ⁱˊ:Ljava/lang/Object;

    aput-object v12, v11, v13

    if-ne v14, v1, :cond_a

    add-int/lit8 v8, v8, -0x1

    :cond_a
    aget-byte v12, v9, v13

    if-eq v12, v2, :cond_c

    int-to-byte v12, v2

    aput-byte v12, v9, v13

    invoke-interface {v10}, Lʽʿ/ʽﹳ;->ʼˎ()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lʽʿ/ˉʿ;

    if-nez v13, :cond_b

    goto :goto_6

    :cond_b
    move-object v12, v3

    :goto_6
    check-cast v12, Lﹶˈ/יـ;

    if-nez v12, :cond_9

    :cond_c
    if-nez v8, :cond_6

    iget-object v12, v0, Lʿᵔ/ᵔᵢ;->ᵔי:Lʿᵢ/ˉٴ;

    iget-object v12, v12, Lʿᵢ/ˉٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v12, [Lᵎˈ/ᵎﹶ;

    array-length v12, v12

    new-array v12, v12, [Lⁱᵎ/ʽ;

    const/16 v13, 0xe

    invoke-static {v4, v4, v13, v11, v12}, Lﹶˈ/ʼˎ;->ـﹶ(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v11, v0, Lʿᵔ/ᵔᵢ;->ٴʼ:Ljava/lang/Object;

    iput-object v10, v0, Lʿᵔ/ᵔᵢ;->ᴵᵔ:Lʽʿ/ˆʾ;

    iput-object v9, v0, Lʿᵔ/ᵔᵢ;->ˊʻ:[B

    iput v8, v0, Lʿᵔ/ᵔᵢ;->ٴᵢ:I

    iput v2, v0, Lʿᵔ/ᵔᵢ;->ˉٴ:I

    iput v5, v0, Lʿᵔ/ᵔᵢ;->ᵎⁱ:I

    iget-object v13, v0, Lʿᵔ/ᵔᵢ;->ˆﾞ:Lⁱᵎ/ᵔᵢ;

    iget-object v14, v0, Lʿᵔ/ᵔᵢ;->ᵔٴ:Lᵎˈ/ᵔᵢ;

    invoke-virtual {v13, v14, v12, v0}, Lⁱᵎ/ᵔᵢ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_6

    :goto_7
    return-object v7
.end method
