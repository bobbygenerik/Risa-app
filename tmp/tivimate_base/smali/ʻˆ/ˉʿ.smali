.class public final Lʻˆ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# static fields
.field public static final ˋᵔ:Lʽⁱ/ﹳᐧ;

.field public static final ˑٴ:[B


# instance fields
.field public ʻٴ:J

.field public ʼʼ:J

.field public final ʼˎ:[B

.field public final ʼᐧ:Lʻᴵ/ʼʼ;

.field public final ʽ:Lʻˆ/ˏי;

.field public ʽʽ:J

.field public ʽﹳ:I

.field public ʾˋ:J

.field public ʾᵎ:Lᐧˎ/ﹳᐧ;

.field public final ˆʾ:Lᐧˎ/ﹳᐧ;

.field public ˆﾞ:Z

.field public final ˈ:Ljava/util/List;

.field public ˈʿ:J

.field public ˈٴ:Lʻˆ/ﾞʻ;

.field public final ˉʿ:Lᐧˎ/ﹳᐧ;

.field public final ˉˆ:Ljava/util/ArrayDeque;

.field public ˉٴ:Z

.field public ˊʻ:I

.field public ˏי:I

.field public final ˑﹳ:Landroid/util/SparseArray;

.field public יـ:Lʼʻ/ʿᵢ;

.field public ـˆ:I

.field public ٴʼ:Lˊﾞ/ᵔﹳ;

.field public ٴᵢ:I

.field public final ٴﹶ:Lᐧˎ/ـˆ;

.field public ᴵˊ:J

.field public ᴵᵔ:I

.field public ᵎˊ:[Lˊﾞ/ٴᵢ;

.field public ᵎⁱ:Z

.field public final ᵎﹶ:Lᐧˎ/ﹳᐧ;

.field public final ᵔʾ:Ljava/util/ArrayDeque;

.field public ᵔי:[Lˊﾞ/ٴᵢ;

.field public ᵔٴ:Z

.field public final ᵔᵢ:Lᐧˎ/ﹳᐧ;

.field public final ᵔﹳ:Lˊﾞ/ٴᵢ;

.field public ᵢˏ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Lʽᐧ/ˆʾ;

.field public final ﹳᐧ:Lˊﾞ/ٴﹶ;

.field public final ﾞʻ:Lﹳʽ/ˊʻ;

.field public final ﾞᴵ:Lᐧˎ/ﹳᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lʻˆ/ˉʿ;->ˑٴ:[B

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v1, Lʽⁱ/ﹳᐧ;

    invoke-direct {v1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    sput-object v1, Lʻˆ/ˉʿ;->ˋᵔ:Lʽⁱ/ﹳᐧ;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Lʽᐧ/ˆʾ;ILᐧˎ/ـˆ;Lʻˆ/ˏי;Ljava/util/List;Lـᵢ/ᵔʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ﹳٴ:Lʽᐧ/ˆʾ;

    iput p2, p0, Lʻˆ/ˉʿ;->ⁱˊ:I

    iput-object p3, p0, Lʻˆ/ˉʿ;->ٴﹶ:Lᐧˎ/ـˆ;

    iput-object p4, p0, Lʻˆ/ˉʿ;->ʽ:Lʻˆ/ˏי;

    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʻˆ/ˉʿ;->ˈ:Ljava/util/List;

    iput-object p6, p0, Lʻˆ/ˉʿ;->ᵔﹳ:Lˊﾞ/ٴᵢ;

    new-instance p1, Lﹳʽ/ˊʻ;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lﹳʽ/ˊʻ;-><init>(I)V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ﾞʻ:Lﹳʽ/ˊʻ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ˉʿ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    sget-object p3, Lʻᴵ/ﹳᐧ;->ﹳٴ:[B

    invoke-direct {p1, p3}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ﾞᴵ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ᵎﹶ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ᵔᵢ:Lᐧˎ/ﹳᐧ;

    new-array p1, p2, [B

    iput-object p1, p0, Lʻˆ/ˉʿ;->ʼˎ:[B

    new-instance p2, Lᐧˎ/ﹳᐧ;

    invoke-direct {p2, p1}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object p2, p0, Lʻˆ/ˉʿ;->ˆʾ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ᵔʾ:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ˉˆ:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lʻˆ/ˉʿ;->ˑﹳ:Landroid/util/SparseArray;

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iput-object p1, p0, Lʻˆ/ˉʿ;->יـ:Lʼʻ/ʿᵢ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lʻˆ/ˉʿ;->ᴵˊ:J

    iput-wide p1, p0, Lʻˆ/ˉʿ;->ʾˋ:J

    iput-wide p1, p0, Lʻˆ/ˉʿ;->ʽʽ:J

    sget-object p1, Lˊﾞ/ᵔﹳ;->ᵔʾ:Lـˎ/ˈ;

    iput-object p1, p0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    const/4 p1, 0x0

    new-array p2, p1, [Lˊﾞ/ٴᵢ;

    iput-object p2, p0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    new-array p2, p1, [Lˊﾞ/ٴᵢ;

    iput-object p2, p0, Lʻˆ/ˉʿ;->ᵔי:[Lˊﾞ/ٴᵢ;

    new-instance p2, Lʻᴵ/ʼʼ;

    new-instance p3, Lʻˆ/ˆʾ;

    invoke-direct {p3, p0}, Lʻˆ/ˆʾ;-><init>(Lʻˆ/ˉʿ;)V

    invoke-direct {p2, p3}, Lʻᴵ/ʼʼ;-><init>(Lʻᴵ/ʾᵎ;)V

    iput-object p2, p0, Lʻˆ/ˉʿ;->ʼᐧ:Lʻᴵ/ʼʼ;

    new-instance p2, Lˊﾞ/ٴﹶ;

    invoke-direct {p2, p1}, Lˊﾞ/ٴﹶ;-><init>(I)V

    iput-object p2, p0, Lʻˆ/ˉʿ;->ﹳᐧ:Lˊﾞ/ٴﹶ;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lʻˆ/ˉʿ;->ˈʿ:J

    return-void
.end method

.method public static ˆʾ(JLᐧˎ/ﹳᐧ;)Landroid/util/Pair;
    .locals 22

    .prologue
    move-object/from16 v0, p2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    invoke-static {v1}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v7

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v3

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v5

    :goto_0
    add-long v5, v5, p0

    move-wide v10, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v3

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v9}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v1

    new-array v14, v1, [I

    new-array v15, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v9, 0x0

    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move v10, v9

    :goto_2
    if-ge v10, v1, :cond_2

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v9

    const/high16 v11, -0x80000000

    and-int/2addr v11, v9

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v20

    const v11, 0x7fffffff

    and-int/2addr v9, v11

    aput v9, v14, v10

    aput-wide v16, v15, v10

    aput-wide v18, v6, v10

    add-long v3, v3, v20

    move-object v9, v5

    move-object v11, v6

    const-wide/32 v5, 0xf4240

    move-object/from16 v18, v9

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v2, v11

    move-object/from16 v11, v18

    invoke-static/range {v3 .. v9}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v19, v2, v10

    sub-long v19, v5, v19

    aput-wide v19, v11, v10

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    aget v9, v14, v10

    move/from16 p0, v1

    int-to-long v0, v9

    add-long v16, v16, v0

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p0

    move-object/from16 v0, p2

    move-wide/from16 v18, v5

    move-object v5, v11

    move-object v6, v2

    const/4 v2, 0x4

    goto :goto_2

    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v11, v5

    move-object v2, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lˊﾞ/ˆʾ;

    invoke-direct {v1, v14, v15, v11, v2}, Lˊﾞ/ˆʾ;-><init>([I[J[J[J)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static ˑﹳ(Ljava/util/List;)Lʽⁱ/ᵔʾ;
    .locals 9

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʻᴵ/ˑﹳ;

    iget v6, v5, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v5, v5, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    iget-object v5, v5, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v5}, Lʻˆ/יـ;->ˆʾ([B)Lʻʽ/ʼˎ;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    iget-object v6, v6, Lʻʽ/ʼˎ;->ʽ:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v5, v6}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v7, Lʽⁱ/ˉʿ;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v1, v8, v5}, Lʽⁱ/ˉʿ;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object v1

    :cond_5
    new-instance p0, Lʽⁱ/ᵔʾ;

    new-array v0, v2, [Lʽⁱ/ˉʿ;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʽⁱ/ˉʿ;

    invoke-direct {p0, v1, v2, v0}, Lʽⁱ/ᵔʾ;-><init>(Ljava/lang/String;Z[Lʽⁱ/ˉʿ;)V

    return-object p0
.end method

.method public static ᵔᵢ(Lᐧˎ/ﹳᐧ;ILʻˆ/ʻٴ;)V
    .locals 5

    .prologue
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result p1

    sget-object v0, Lʻˆ/ᵔᵢ;->ﹳٴ:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    iget p1, p2, Lʻˆ/ʻٴ;->ˑﹳ:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Lʻˆ/ʻٴ;->ˑﹳ:I

    iget-object v4, p2, Lʻˆ/ʻٴ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result p1

    invoke-virtual {v4, p1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iput-boolean v1, p2, Lʻˆ/ʻٴ;->ٴﹶ:Z

    iput-boolean v1, p2, Lʻˆ/ʻٴ;->ˉˆ:Z

    iget-object p1, v4, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v1, v4, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-virtual {p0, p1, v0, v1}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-virtual {v4, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iput-boolean v0, p2, Lʻˆ/ʻٴ;->ˉˆ:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    invoke-static {v2, p0, p1}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Lʻˆ/ʻٴ;->ˑﹳ:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 12

    .prologue
    iget v0, p0, Lʻˆ/ˉʿ;->ⁱˊ:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    new-instance v1, Lcom/bumptech/glide/ʼˎ;

    iget-object v2, p0, Lʻˆ/ˉʿ;->ﹳٴ:Lʽᐧ/ˆʾ;

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/ʼˎ;-><init>(Lˊﾞ/ᵔﹳ;Lʽᐧ/ˆʾ;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {p0}, Lʻˆ/ˉʿ;->ʽ()V

    const/4 p1, 0x2

    new-array p1, p1, [Lˊﾞ/ٴᵢ;

    iput-object p1, p0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    const/4 v1, 0x0

    iget-object v2, p0, Lʻˆ/ˉʿ;->ᵔﹳ:Lˊﾞ/ٴᵢ;

    if-eqz v2, :cond_1

    aput-object v2, p1, v1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    and-int/lit8 v0, v0, 0x4

    const/16 v3, 0x64

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    const/4 v5, 0x5

    invoke-interface {v4, v3, v5}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v3

    aput-object v3, p1, v2

    const/16 v3, 0x65

    move v2, v0

    :cond_2
    iget-object p1, p0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    invoke-static {v2, p1}, Lᐧˎ/ʼʼ;->ﹳـ(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lˊﾞ/ٴᵢ;

    iput-object p1, p0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    sget-object v5, Lʻˆ/ˉʿ;->ˋᵔ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v4, v5}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lʻˆ/ˉʿ;->ˈ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lˊﾞ/ٴᵢ;

    iput-object v0, p0, Lʻˆ/ˉʿ;->ᵔי:[Lˊﾞ/ٴᵢ;

    move v0, v1

    :goto_2
    iget-object v2, p0, Lʻˆ/ˉʿ;->ᵔי:[Lˊﾞ/ٴᵢ;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x3

    invoke-interface {v2, v3, v5}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽⁱ/ﹳᐧ;

    invoke-interface {v2, v3}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    iget-object v3, p0, Lʻˆ/ˉʿ;->ᵔי:[Lˊﾞ/ٴᵢ;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lʻˆ/ˉʿ;->ʽ:Lʻˆ/ˏי;

    if-eqz p1, :cond_9

    iget-object v0, p1, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v0}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v2

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "video/mp4"

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "audio/mp4"

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "image/heic"

    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "image/heif"

    goto :goto_3

    :cond_7
    const-string v3, "image/avif"

    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v3

    goto :goto_3

    :cond_8
    const-string v0, "application/mp4"

    :goto_3
    invoke-static {v0}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    new-instance v0, Lʻˆ/ﾞʻ;

    iget-object v3, p0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    iget p1, p1, Lʻˆ/ˏי;->ⁱˊ:I

    invoke-interface {v3, v1, p1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    new-instance v3, Lʻˆ/ـˆ;

    new-array v5, v1, [J

    new-array v6, v1, [I

    new-array v8, v1, [J

    new-array v9, v1, [I

    const-wide/16 v10, 0x0

    iget-object v4, p0, Lʻˆ/ˉʿ;->ʽ:Lʻˆ/ˏי;

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v11}, Lʻˆ/ـˆ;-><init>(Lʻˆ/ˏי;[J[II[J[IJ)V

    new-instance v4, Lʻˆ/ʼˎ;

    invoke-direct {v4, v1, v1, v1, v1}, Lʻˆ/ʼˎ;-><init>(IIII)V

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v2}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-direct {v0, p1, v3, v4, v5}, Lʻˆ/ﾞʻ;-><init>(Lˊﾞ/ٴᵢ;Lʻˆ/ـˆ;Lʻˆ/ʼˎ;Lʽⁱ/ﹳᐧ;)V

    iget-object p1, p0, Lʻˆ/ˉʿ;->ˑﹳ:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    :cond_9
    return-void
.end method

.method public final ʽ()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʻˆ/ˉʿ;->ˏי:I

    iput v0, p0, Lʻˆ/ˉʿ;->ـˆ:I

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 32

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lʻˆ/ˉʿ;->ˏי:I

    iget-object v5, v0, Lʻˆ/ˉʿ;->ᵔʾ:Ljava/util/ArrayDeque;

    iget-object v7, v0, Lʻˆ/ˉʿ;->ʼᐧ:Lʻᴵ/ʼʼ;

    iget-object v8, v0, Lʻˆ/ˉʿ;->ˆʾ:Lᐧˎ/ﹳᐧ;

    iget-object v9, v0, Lʻˆ/ˉʿ;->ﹳᐧ:Lˊﾞ/ٴﹶ;

    iget-object v10, v0, Lʻˆ/ˉʿ;->ˑﹳ:Landroid/util/SparseArray;

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-eqz v2, :cond_43

    iget-object v3, v0, Lʻˆ/ˉʿ;->ˉˆ:Ljava/util/ArrayDeque;

    iget v4, v0, Lʻˆ/ˉʿ;->ⁱˊ:I

    const-string v6, "FragmentedMp4Extractor"

    const/16 v19, 0x0

    iget-object v14, v0, Lʻˆ/ˉʿ;->ٴﹶ:Lᐧˎ/ـˆ;

    if-eq v2, v15, :cond_34

    const-wide v16, 0x7fffffffffffffffL

    if-eq v2, v13, :cond_2f

    iget-object v2, v0, Lʻˆ/ˉʿ;->ˈٴ:Lʻˆ/ﾞʻ;

    if-nez v2, :cond_9

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v20, v13

    move/from16 v13, v19

    const/4 v9, 0x0

    :goto_1
    if-ge v13, v2, :cond_4

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x8

    move-object/from16 v12, v21

    check-cast v12, Lʻˆ/ﾞʻ;

    move/from16 v21, v15

    iget-boolean v15, v12, Lʻˆ/ﾞʻ;->ˉʿ:Z

    iget-object v5, v12, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    if-nez v15, :cond_0

    iget v11, v12, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    move/from16 v25, v2

    iget-object v2, v12, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget v2, v2, Lʻˆ/ـˆ;->ⁱˊ:I

    if-eq v11, v2, :cond_3

    goto :goto_2

    :cond_0
    move/from16 v25, v2

    :goto_2
    if-eqz v15, :cond_1

    iget v2, v12, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    iget v11, v5, Lʻˆ/ʻٴ;->ˈ:I

    if-ne v2, v11, :cond_1

    goto :goto_4

    :cond_1
    if-nez v15, :cond_2

    iget-object v2, v12, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v2, v2, Lʻˆ/ـˆ;->ʽ:[J

    iget v5, v12, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget-wide v26, v2, v5

    goto :goto_3

    :cond_2
    iget-object v2, v5, Lʻˆ/ʻٴ;->ﾞᴵ:[J

    iget v5, v12, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    aget-wide v26, v2, v5

    :goto_3
    cmp-long v2, v26, v16

    if-gez v2, :cond_3

    move-object v9, v12

    move-wide/from16 v16, v26

    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v21

    move/from16 v2, v25

    goto :goto_1

    :cond_4
    move/from16 v21, v15

    const/16 v22, 0x8

    if-nez v9, :cond_6

    iget-wide v2, v0, Lʻˆ/ˉʿ;->ʼʼ:J

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_5

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-virtual {v0}, Lʻˆ/ˉʿ;->ʽ()V

    goto/16 :goto_0

    :cond_5
    const-string v1, "Offset to end of mdat was negative."

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_6
    iget-boolean v2, v9, Lʻˆ/ﾞʻ;->ˉʿ:Z

    if-nez v2, :cond_7

    iget-object v2, v9, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v2, v2, Lʻˆ/ـˆ;->ʽ:[J

    iget v5, v9, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget-wide v10, v2, v5

    goto :goto_5

    :cond_7
    iget-object v2, v9, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-object v2, v2, Lʻˆ/ʻٴ;->ﾞᴵ:[J

    iget v5, v9, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    aget-wide v10, v2, v5

    :goto_5
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v2, v10

    if-gez v2, :cond_8

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v6, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v19

    :cond_8
    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    iput-object v9, v0, Lʻˆ/ˉʿ;->ˈٴ:Lʻˆ/ﾞʻ;

    move-object v2, v9

    goto :goto_6

    :cond_9
    move/from16 v20, v13

    move/from16 v21, v15

    const/16 v22, 0x8

    :goto_6
    iget-object v5, v2, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget v6, v0, Lʻˆ/ˉʿ;->ˏי:I

    const/4 v9, 0x6

    const-string v10, "video/hevc"

    const-string v11, "video/avc"

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-ne v6, v13, :cond_14

    iget-boolean v6, v2, Lʻˆ/ﾞʻ;->ˉʿ:Z

    if-nez v6, :cond_a

    iget-object v6, v2, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v6, v6, Lʻˆ/ـˆ;->ˈ:[I

    iget v13, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget v6, v6, v13

    goto :goto_7

    :cond_a
    iget-object v6, v5, Lʻˆ/ʻٴ;->ᵔᵢ:[I

    iget v13, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget v6, v6, v13

    :goto_7
    iput v6, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    iget-object v6, v2, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v6, v6, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v6, v6, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iget-object v13, v6, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v13, v11}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_b

    :goto_8
    move/from16 v4, v21

    goto :goto_9

    :cond_b
    move/from16 v4, v19

    goto :goto_9

    :cond_c
    iget-object v6, v6, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v6, v10}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    goto :goto_8

    :goto_9
    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v0, Lʻˆ/ˉʿ;->ˉٴ:Z

    iget v4, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iget v6, v2, Lʻˆ/ﾞʻ;->ʼˎ:I

    if-ge v4, v6, :cond_11

    iget v3, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-virtual {v2}, Lʻˆ/ﾞʻ;->ⁱˊ()Lʻˆ/ʽﹳ;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_a

    :cond_d
    iget-object v3, v5, Lʻˆ/ʻٴ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    iget v1, v1, Lʻˆ/ʽﹳ;->ˈ:I

    if-eqz v1, :cond_e

    invoke-virtual {v3, v1}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_e
    iget v1, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iget-boolean v4, v5, Lʻˆ/ʻٴ;->ٴﹶ:Z

    if-eqz v4, :cond_f

    iget-object v4, v5, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v1

    mul-int/2addr v1, v9

    invoke-virtual {v3, v1}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_f
    :goto_a
    invoke-virtual {v2}, Lʻˆ/ﾞʻ;->ʽ()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v2, 0x0

    iput-object v2, v0, Lʻˆ/ˉʿ;->ˈٴ:Lʻˆ/ﾞʻ;

    :cond_10
    const/4 v13, 0x3

    iput v13, v0, Lʻˆ/ˉʿ;->ˏי:I

    return v19

    :cond_11
    iget-object v4, v2, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v4, v4, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget v4, v4, Lʻˆ/ˏי;->ᵔᵢ:I

    move/from16 v6, v21

    if-ne v4, v6, :cond_12

    iget v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    add-int/lit8 v4, v4, -0x8

    iput v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    move/from16 v4, v22

    invoke-interface {v1, v4}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_12
    iget-object v4, v2, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v4, v4, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v4, v4, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iget-object v4, v4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    const/4 v6, 0x7

    invoke-virtual {v2, v4, v6}, Lʻˆ/ﾞʻ;->ˈ(II)I

    move-result v4

    iput v4, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    iget v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    invoke-static {v4, v8}, Lˊﾞ/ﹳٴ;->ʼˎ(ILᐧˎ/ﹳᐧ;)V

    iget-object v4, v2, Lʻˆ/ﾞʻ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v6, v8}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v4, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    add-int/2addr v4, v6

    iput v4, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    move/from16 v6, v19

    goto :goto_b

    :cond_13
    iget v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    move/from16 v6, v19

    invoke-virtual {v2, v4, v6}, Lʻˆ/ﾞʻ;->ˈ(II)I

    move-result v4

    iput v4, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    :goto_b
    iget v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    iget v8, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    add-int/2addr v4, v8

    iput v4, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    iput v12, v0, Lʻˆ/ˉʿ;->ˏי:I

    iput v6, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    :cond_14
    iget-object v4, v2, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v6, v4, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v8, v2, Lʻˆ/ﾞʻ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    iget-boolean v13, v2, Lʻˆ/ﾞʻ;->ˉʿ:Z

    if-nez v13, :cond_15

    iget-object v4, v4, Lʻˆ/ـˆ;->ﾞᴵ:[J

    iget v5, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget-wide v15, v4, v5

    :goto_c
    move-wide v4, v15

    goto :goto_d

    :cond_15
    iget v4, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iget-object v5, v5, Lʻˆ/ʻٴ;->ʼˎ:[J

    aget-wide v15, v5, v4

    goto :goto_c

    :goto_d
    if-eqz v14, :cond_16

    invoke-virtual {v14, v4, v5}, Lᐧˎ/ـˆ;->ﹳٴ(J)J

    move-result-wide v4

    :cond_16
    iget v13, v6, Lʻˆ/ˏי;->ٴﹶ:I

    iget-object v6, v6, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    if-eqz v13, :cond_26

    iget-object v15, v0, Lʻˆ/ˉʿ;->ᵎﹶ:Lᐧˎ/ﹳᐧ;

    iget-object v9, v15, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v19, 0x0

    aput-byte v19, v9, v19

    const/16 v21, 0x1

    aput-byte v19, v9, v21

    aput-byte v19, v9, v20

    rsub-int/lit8 v12, v13, 0x4

    move-object/from16 v17, v2

    :goto_e
    iget v2, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    move/from16 v22, v13

    iget v13, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    if-ge v2, v13, :cond_27

    iget v2, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    if-nez v2, :cond_21

    iget-object v2, v0, Lʻˆ/ˉʿ;->ᵔי:[Lˊﾞ/ٴᵢ;

    array-length v2, v2

    if-gtz v2, :cond_17

    iget-boolean v2, v0, Lʻˆ/ˉʿ;->ˉٴ:Z

    if-nez v2, :cond_18

    :cond_17
    invoke-static {v6}, Lʻᴵ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;)I

    move-result v2

    add-int v13, v22, v2

    move/from16 v20, v2

    iget v2, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    move/from16 v25, v2

    iget v2, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    sub-int v2, v25, v2

    if-gt v13, v2, :cond_18

    move/from16 v2, v20

    goto :goto_f

    :cond_18
    const/4 v2, 0x0

    :goto_f
    add-int v13, v22, v2

    invoke-interface {v1, v9, v12, v13}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v15}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v19

    if-ltz v19, :cond_20

    sub-int v13, v19, v2

    iput v13, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    iget-object v13, v0, Lʻˆ/ˉʿ;->ﾞᴵ:Lᐧˎ/ﹳᐧ;

    move/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    const/4 v12, 0x4

    invoke-interface {v8, v12, v13}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v13, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    add-int/2addr v13, v12

    iput v13, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    iget v13, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    add-int v13, v13, v25

    iput v13, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    iget-object v13, v0, Lʻˆ/ˉʿ;->ᵔי:[Lˊﾞ/ٴᵢ;

    array-length v13, v13

    if-lez v13, :cond_1d

    if-lez v2, :cond_1d

    aget-byte v13, v9, v12

    iget-object v12, v6, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    move/from16 v20, v13

    iget-object v13, v6, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v12, v11}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-static {v13, v11}, Lʽⁱ/ˉٴ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_19

    goto :goto_10

    :cond_19
    move-object/from16 v26, v11

    const/4 v11, 0x6

    goto :goto_11

    :cond_1a
    :goto_10
    and-int/lit8 v12, v20, 0x1f

    move-object/from16 v26, v11

    const/4 v11, 0x6

    if-eq v12, v11, :cond_1c

    :goto_11
    iget-object v12, v6, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v12, v10}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    invoke-static {v13, v10}, Lʽⁱ/ˉٴ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1e

    :cond_1b
    and-int/lit8 v12, v20, 0x7e

    const/16 v21, 0x1

    shr-int/lit8 v12, v12, 0x1

    const/16 v13, 0x27

    if-ne v12, v13, :cond_1e

    :cond_1c
    const/4 v12, 0x1

    goto :goto_12

    :cond_1d
    move-object/from16 v26, v11

    const/4 v11, 0x6

    :cond_1e
    const/4 v12, 0x0

    :goto_12
    iput-boolean v12, v0, Lʻˆ/ˉʿ;->ᵎⁱ:Z

    invoke-interface {v8, v2, v15}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v12, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    add-int/2addr v12, v2

    iput v12, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    if-lez v2, :cond_1f

    iget-boolean v12, v0, Lʻˆ/ˉʿ;->ˉٴ:Z

    if-nez v12, :cond_1f

    invoke-static {v9, v2, v6}, Lʻᴵ/ﹳᐧ;->ʽ([BILʽⁱ/ﹳᐧ;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lʻˆ/ˉʿ;->ˉٴ:Z

    :cond_1f
    :goto_13
    move/from16 v13, v22

    move/from16 v12, v25

    move-object/from16 v11, v26

    goto/16 :goto_e

    :cond_20
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_21
    move-object/from16 v26, v11

    move/from16 v25, v12

    const/4 v11, 0x6

    iget-boolean v12, v0, Lʻˆ/ˉʿ;->ᵎⁱ:Z

    if-eqz v12, :cond_25

    iget-object v12, v0, Lʻˆ/ˉʿ;->ᵔᵢ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v12, v2}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v13, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    const/4 v11, 0x0

    invoke-interface {v1, v2, v11, v13}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    iget v2, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    invoke-interface {v8, v2, v12}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v2, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    iget-object v13, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    move/from16 v20, v2

    iget v2, v12, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-static {v2, v13}, Lʻᴵ/ﹳᐧ;->ˉʿ(I[B)I

    move-result v2

    invoke-virtual {v12, v11}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v12, v2}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    iget v2, v6, Lʽⁱ/ﹳᐧ;->ʼᐧ:I

    const/4 v13, -0x1

    if-ne v2, v13, :cond_22

    iget v2, v7, Lʻᴵ/ʼʼ;->ﹳٴ:I

    if-eqz v2, :cond_23

    invoke-virtual {v7, v11}, Lʻᴵ/ʼʼ;->ʻٴ(I)V

    goto :goto_14

    :cond_22
    iget v11, v7, Lʻᴵ/ʼʼ;->ﹳٴ:I

    if-eq v11, v2, :cond_23

    invoke-virtual {v7, v2}, Lʻᴵ/ʼʼ;->ʻٴ(I)V

    :cond_23
    :goto_14
    invoke-virtual {v7, v4, v5, v12}, Lʻᴵ/ʼʼ;->ﹳٴ(JLᐧˎ/ﹳᐧ;)V

    invoke-virtual/range {v17 .. v17}, Lʻˆ/ﾞʻ;->ﹳٴ()I

    move-result v2

    const/16 v16, 0x4

    and-int/lit8 v2, v2, 0x4

    const/4 v13, 0x0

    if-eqz v2, :cond_24

    invoke-virtual {v7, v13}, Lʻᴵ/ʼʼ;->ʼˎ(I)V

    :cond_24
    move/from16 v2, v20

    goto :goto_15

    :cond_25
    const/4 v13, 0x0

    const/16 v16, 0x4

    invoke-interface {v8, v1, v2, v13}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result v2

    :goto_15
    iget v11, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    add-int/2addr v11, v2

    iput v11, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    iget v11, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    sub-int/2addr v11, v2

    iput v11, v0, Lʻˆ/ˉʿ;->ٴᵢ:I

    goto :goto_13

    :cond_26
    move-object/from16 v17, v2

    :goto_16
    iget v2, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    iget v6, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    if-ge v2, v6, :cond_27

    sub-int/2addr v6, v2

    const/4 v13, 0x0

    invoke-interface {v8, v1, v6, v13}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result v2

    iget v6, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    add-int/2addr v6, v2

    iput v6, v0, Lʻˆ/ˉʿ;->ˊʻ:I

    goto :goto_16

    :cond_27
    invoke-virtual/range {v17 .. v17}, Lʻˆ/ﾞʻ;->ﹳٴ()I

    move-result v1

    iget-boolean v2, v0, Lʻˆ/ˉʿ;->ˉٴ:Z

    if-nez v2, :cond_28

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_28
    move/from16 v28, v1

    invoke-virtual/range {v17 .. v17}, Lʻˆ/ﾞʻ;->ⁱˊ()Lʻˆ/ʽﹳ;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, v1, Lʻˆ/ʽﹳ;->ʽ:Lˊﾞ/ˊʻ;

    move-object/from16 v31, v1

    goto :goto_17

    :cond_29
    const/16 v31, 0x0

    :goto_17
    iget v1, v0, Lʻˆ/ˉʿ;->ᴵᵔ:I

    const/16 v30, 0x0

    move/from16 v29, v1

    move-wide/from16 v26, v4

    move-object/from16 v25, v8

    invoke-interface/range {v25 .. v31}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :cond_2a
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʻˆ/ٴﹶ;

    iget v2, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    iget v4, v1, Lʻˆ/ٴﹶ;->ʽ:I

    sub-int/2addr v2, v4

    iput v2, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    iget-wide v4, v1, Lʻˆ/ٴﹶ;->ﹳٴ:J

    iget-boolean v2, v1, Lʻˆ/ٴﹶ;->ⁱˊ:Z

    if-eqz v2, :cond_2b

    add-long v4, v4, v26

    :cond_2b
    if-eqz v14, :cond_2c

    invoke-virtual {v14, v4, v5}, Lᐧˎ/ـˆ;->ﹳٴ(J)J

    move-result-wide v4

    :cond_2c
    move-wide v7, v4

    iget-object v2, v0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_2a

    aget-object v6, v2, v5

    iget v10, v1, Lʻˆ/ٴﹶ;->ʽ:I

    iget v11, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2d
    invoke-virtual/range {v17 .. v17}, Lʻˆ/ﾞʻ;->ʽ()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v2, 0x0

    iput-object v2, v0, Lʻˆ/ˉʿ;->ˈٴ:Lʻˆ/ﾞʻ;

    :cond_2e
    const/4 v13, 0x3

    iput v13, v0, Lʻˆ/ˉʿ;->ˏי:I

    const/16 v19, 0x0

    return v19

    :cond_2f
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v3, v2, :cond_31

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʻˆ/ﾞʻ;

    iget-object v5, v5, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-boolean v6, v5, Lʻˆ/ʻٴ;->ˉˆ:Z

    if-eqz v6, :cond_30

    iget-wide v5, v5, Lʻˆ/ʻٴ;->ʽ:J

    cmp-long v7, v5, v16

    if-gez v7, :cond_30

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʻˆ/ﾞʻ;

    move-wide/from16 v16, v5

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_31
    if-nez v4, :cond_32

    const/4 v13, 0x3

    iput v13, v0, Lʻˆ/ˉʿ;->ˏי:I

    goto/16 :goto_0

    :cond_32
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    sub-long v2, v16, v2

    long-to-int v2, v2

    if-ltz v2, :cond_33

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    iget-object v2, v4, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-object v3, v2, Lʻˆ/ʻٴ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    iget-object v4, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v5, v3, Lᐧˎ/ﹳᐧ;->ʽ:I

    const/4 v13, 0x0

    invoke-interface {v1, v4, v13, v5}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v3, v13}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iput-boolean v13, v2, Lʻˆ/ʻٴ;->ˉˆ:Z

    goto/16 :goto_0

    :cond_33
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_34
    iget-wide v7, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    iget v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v10, v2

    sub-long/2addr v7, v10

    long-to-int v2, v7

    iget-object v7, v0, Lʻˆ/ˉʿ;->ʾᵎ:Lᐧˎ/ﹳᐧ;

    if-eqz v7, :cond_41

    iget-object v8, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v10, 0x8

    invoke-interface {v1, v8, v10, v2}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    new-instance v2, Lʻᴵ/ˑﹳ;

    iget v8, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    invoke-direct {v2, v8, v7}, Lʻᴵ/ˑﹳ;-><init>(ILᐧˎ/ﹳᐧ;)V

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_35

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʻᴵ/ˈ;

    iget-object v3, v3, Lʻᴵ/ˈ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_35
    const v2, 0x73696478

    if-ne v8, v2, :cond_37

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    invoke-static {v2, v3, v7}, Lʻˆ/ˉʿ;->ˆʾ(JLᐧˎ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lˊﾞ/ˆʾ;

    invoke-virtual {v9, v3}, Lˊﾞ/ٴﹶ;->ﹳٴ(Lˊﾞ/ˆʾ;)V

    iget-boolean v3, v0, Lʻˆ/ˉʿ;->ˆﾞ:Z

    if-nez v3, :cond_36

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lʻˆ/ˉʿ;->ʽʽ:J

    iget-object v3, v0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lˊﾞ/ʾˋ;

    invoke-interface {v3, v2}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lʻˆ/ˉʿ;->ˆﾞ:Z

    goto/16 :goto_1f

    :cond_36
    const/4 v2, 0x1

    and-int/lit16 v3, v4, 0x100

    if-eqz v3, :cond_42

    iget-boolean v3, v0, Lʻˆ/ˉʿ;->ᵔٴ:Z

    if-nez v3, :cond_42

    iget-object v3, v9, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v2, :cond_42

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lʻˆ/ˉʿ;->ˈʿ:J

    goto/16 :goto_1f

    :cond_37
    const v2, 0x656d7367

    if-ne v8, v2, :cond_42

    iget-object v2, v0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    array-length v2, v2

    if-nez v2, :cond_38

    goto/16 :goto_1f

    :cond_38
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    invoke-static {v2}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_3a

    const/4 v8, 0x1

    if-eq v2, v8, :cond_39

    const-string v3, "Skipping unsupported emsg version: "

    invoke-static {v2, v3, v6}, Lˉˆ/ٴᴵ;->יـ(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_39
    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v26

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v22

    sget-object v28, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v24, 0xf4240

    invoke-static/range {v22 .. v28}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    invoke-static/range {v22 .. v28}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v12

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    move-wide v10, v4

    :goto_1a
    move-object/from16 v23, v2

    move-object/from16 v24, v6

    goto :goto_1c

    :cond_3a
    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v26

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v22

    sget-object v28, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v24, 0xf4240

    invoke-static/range {v22 .. v28}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    iget-wide v10, v0, Lʻˆ/ˉʿ;->ʽʽ:J

    cmp-long v12, v10, v4

    if-eqz v12, :cond_3b

    add-long/2addr v10, v8

    goto :goto_1b

    :cond_3b
    move-wide v10, v4

    :goto_1b
    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    invoke-static/range {v22 .. v28}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v15

    move-wide/from16 v23, v10

    move-wide v10, v8

    move-wide/from16 v8, v23

    move-wide/from16 v25, v12

    move-wide/from16 v27, v15

    goto :goto_1a

    :goto_1c
    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v6

    const/4 v13, 0x0

    invoke-virtual {v7, v2, v13, v6}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance v22, Lʻʼ/ﹳٴ;

    move-object/from16 v29, v2

    invoke-direct/range {v22 .. v29}, Lʻʼ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v22

    new-instance v6, Lᐧˎ/ﹳᐧ;

    iget-object v7, v0, Lʻˆ/ˉʿ;->ﾞʻ:Lﹳʽ/ˊʻ;

    invoke-virtual {v7, v2}, Lﹳʽ/ˊʻ;->ᵔʾ(Lʻʼ/ﹳٴ;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    iget-object v7, v0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    array-length v12, v7

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v12, :cond_3c

    aget-object v15, v7, v13

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-interface {v15, v2, v6}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v4, v16

    goto :goto_1d

    :cond_3c
    move-wide/from16 v16, v4

    cmp-long v4, v8, v16

    if-nez v4, :cond_3d

    new-instance v4, Lʻˆ/ٴﹶ;

    const/4 v6, 0x1

    invoke-direct {v4, v10, v11, v6, v2}, Lʻˆ/ٴﹶ;-><init>(JZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    add-int/2addr v3, v2

    iput v3, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    goto :goto_1f

    :cond_3d
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    new-instance v4, Lʻˆ/ٴﹶ;

    const/4 v13, 0x0

    invoke-direct {v4, v8, v9, v13, v2}, Lʻˆ/ٴﹶ;-><init>(JZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    add-int/2addr v3, v2

    iput v3, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    goto :goto_1f

    :cond_3e
    const/4 v13, 0x0

    if-eqz v14, :cond_3f

    invoke-virtual {v14}, Lᐧˎ/ـˆ;->ﾞᴵ()Z

    move-result v4

    if-nez v4, :cond_3f

    new-instance v4, Lʻˆ/ٴﹶ;

    invoke-direct {v4, v8, v9, v13, v2}, Lʻˆ/ٴﹶ;-><init>(JZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    add-int/2addr v3, v2

    iput v3, v0, Lʻˆ/ˉʿ;->ᵢˏ:I

    goto :goto_1f

    :cond_3f
    if-eqz v14, :cond_40

    invoke-virtual {v14, v8, v9}, Lᐧˎ/ـˆ;->ﹳٴ(J)J

    move-result-wide v8

    :cond_40
    move-wide/from16 v23, v8

    iget-object v3, v0, Lʻˆ/ˉʿ;->ᵎˊ:[Lˊﾞ/ٴᵢ;

    array-length v4, v3

    const/4 v14, 0x0

    :goto_1e
    if-ge v14, v4, :cond_42

    aget-object v22, v3, v14

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x1

    move/from16 v26, v2

    invoke-interface/range {v22 .. v28}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_41
    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_42
    :goto_1f
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lʻˆ/ˉʿ;->ﾞʻ(J)V

    goto/16 :goto_0

    :cond_43
    move/from16 v20, v13

    iget v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    const-wide/16 v3, 0x0

    const-wide/16 v11, -0x1

    iget-object v6, v0, Lʻˆ/ˉʿ;->ˉʿ:Lᐧˎ/ﹳᐧ;

    if-nez v2, :cond_4a

    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-interface {v1, v2, v14, v13, v15}, Lˊﾞ/ʼᐧ;->ﾞᴵ([BIIZ)Z

    move-result v2

    if-nez v2, :cond_49

    iget-wide v1, v0, Lʻˆ/ˉʿ;->ˈʿ:J

    cmp-long v5, v1, v11

    if-eqz v5, :cond_48

    move-object/from16 v13, p2

    iput-wide v1, v13, Lʽⁱ/ˏי;->ﹳٴ:J

    iput-wide v11, v0, Lʻˆ/ˉʿ;->ˈʿ:J

    iget-object v1, v0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v9, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˊﾞ/ˆʾ;

    iget-object v10, v9, Lˊﾞ/ˆʾ;->ⁱˊ:[I

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v9, Lˊﾞ/ˆʾ;->ʽ:[J

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v9, Lˊﾞ/ˆʾ;->ˈ:[J

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v9, Lˊﾞ/ˆʾ;->ˑﹳ:[J

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_44
    new-instance v8, Lˊﾞ/ˆʾ;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [[I

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    array-length v9, v2

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v9, :cond_45

    aget-object v11, v2, v10

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_45
    long-to-int v9, v3

    int-to-long v10, v9

    cmp-long v10, v3, v10

    if-nez v10, :cond_46

    const/4 v10, 0x1

    goto :goto_22

    :cond_46
    const/4 v10, 0x0

    :goto_22
    const-string v11, "the total number of elements (%s) in the arrays must fit in an int"

    invoke-static {v3, v4, v11, v10}, Lcom/google/android/gms/internal/play_billing/י;->ˑﹳ(JLjava/lang/String;Z)V

    new-array v3, v9, [I

    array-length v4, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_23
    if-ge v9, v4, :cond_47

    aget-object v11, v2, v9

    array-length v12, v11

    const/4 v13, 0x0

    invoke-static {v11, v13, v3, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[J

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    invoke-static {v2}, Lˈˋ/ʾˊ;->ʼˎ([[J)[J

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [[J

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    invoke-static {v4}, Lˈˋ/ʾˊ;->ʼˎ([[J)[J

    move-result-object v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [[J

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    invoke-static {v5}, Lˈˋ/ʾˊ;->ʼˎ([[J)[J

    move-result-object v5

    invoke-direct {v8, v3, v2, v4, v5}, Lˊﾞ/ˆʾ;-><init>([I[J[J[J)V

    invoke-interface {v1, v8}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lʻˆ/ˉʿ;->ᵔٴ:Z

    return v2

    :cond_48
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lʻᴵ/ʼʼ;->ʼˎ(I)V

    const/16 v18, -0x1

    return v18

    :cond_49
    move-object/from16 v13, p2

    const/16 v2, 0x8

    const/4 v14, 0x0

    iput v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    invoke-virtual {v6, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v14

    iput-wide v14, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    iput v2, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    goto :goto_24

    :cond_4a
    move-object/from16 v13, p2

    :goto_24
    iget-wide v14, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    const-wide/16 v25, 0x1

    cmp-long v2, v14, v25

    if-nez v2, :cond_4b

    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v4, 0x8

    invoke-interface {v1, v2, v4, v4}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    iget v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    add-int/2addr v2, v4

    iput v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v2

    iput-wide v2, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    goto :goto_25

    :cond_4b
    cmp-long v2, v14, v3

    if-nez v2, :cond_4d

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-nez v4, :cond_4c

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻᴵ/ˈ;

    iget-wide v2, v2, Lʻᴵ/ˈ;->ʽʽ:J

    :cond_4c
    cmp-long v4, v2, v11

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v14

    sub-long/2addr v2, v14

    iget v4, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v14, v4

    add-long/2addr v2, v14

    iput-wide v2, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    :cond_4d
    :goto_25
    iget-wide v2, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    iget v4, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v14, v4

    cmp-long v4, v2, v14

    if-ltz v4, :cond_5d

    move-wide/from16 v25, v11

    iget-wide v11, v0, Lʻˆ/ˉʿ;->ˈʿ:J

    cmp-long v4, v11, v25

    if-eqz v4, :cond_4f

    iget v4, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    const v5, 0x73696478

    if-ne v4, v5, :cond_4e

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-object v3, v8, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v4, 0x8

    const/4 v14, 0x0

    invoke-static {v2, v14, v3, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v8, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-wide v5, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    iget v3, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v10, v3

    sub-long/2addr v5, v10

    long-to-int v3, v5

    invoke-interface {v1, v2, v4, v3}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v2

    invoke-static {v2, v3, v8}, Lʻˆ/ˉʿ;->ˆʾ(JLᐧˎ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lˊﾞ/ˆʾ;

    invoke-virtual {v9, v2}, Lˊﾞ/ٴﹶ;->ﹳٴ(Lˊﾞ/ˆʾ;)V

    goto :goto_26

    :cond_4e
    sub-long/2addr v2, v14

    long-to-int v2, v2

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Lˊﾞ/ʼᐧ;->ﹳᐧ(IZ)Z

    :goto_26
    invoke-virtual {v0}, Lʻˆ/ˉʿ;->ʽ()V

    goto/16 :goto_0

    :cond_4f
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    iget v4, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v11, v4

    sub-long/2addr v2, v11

    iget v4, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    const v7, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v4, v9, :cond_50

    if-ne v4, v7, :cond_51

    :cond_50
    iget-boolean v4, v0, Lʻˆ/ˉʿ;->ˆﾞ:Z

    if-nez v4, :cond_51

    iget-object v4, v0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    new-instance v11, Lˊﾞ/יـ;

    iget-wide v14, v0, Lʻˆ/ˉʿ;->ᴵˊ:J

    invoke-direct {v11, v14, v15, v2, v3}, Lˊﾞ/יـ;-><init>(JJ)V

    invoke-interface {v4, v11}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 v15, 0x1

    iput-boolean v15, v0, Lʻˆ/ˉʿ;->ˆﾞ:Z

    :cond_51
    iget v4, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    if-ne v4, v9, :cond_52

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v11, 0x0

    :goto_27
    if-ge v11, v4, :cond_52

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lʻˆ/ﾞʻ;

    iget-object v12, v12, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v2, v12, Lʻˆ/ʻٴ;->ʽ:J

    iput-wide v2, v12, Lʻˆ/ʻٴ;->ⁱˊ:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_52
    iget v4, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    if-ne v4, v7, :cond_53

    const/4 v7, 0x0

    iput-object v7, v0, Lʻˆ/ˉʿ;->ˈٴ:Lʻˆ/ﾞʻ;

    iget-wide v4, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lʻˆ/ˉʿ;->ʼʼ:J

    move/from16 v2, v20

    iput v2, v0, Lʻˆ/ˉʿ;->ˏי:I

    goto/16 :goto_0

    :cond_53
    const v2, 0x6d6f6f76

    const v3, 0x6d657461

    if-eq v4, v2, :cond_5a

    const v2, 0x7472616b

    if-eq v4, v2, :cond_5a

    const v2, 0x6d646961

    if-eq v4, v2, :cond_5a

    const v2, 0x6d696e66

    if-eq v4, v2, :cond_5a

    const v2, 0x7374626c

    if-eq v4, v2, :cond_5a

    if-eq v4, v9, :cond_5a

    const v2, 0x74726166

    if-eq v4, v2, :cond_5a

    const v2, 0x6d766578

    if-eq v4, v2, :cond_5a

    const v2, 0x65647473

    if-eq v4, v2, :cond_5a

    if-ne v4, v3, :cond_54

    goto/16 :goto_29

    :cond_54
    const v2, 0x68646c72    # 4.3148E24f

    const-wide/32 v7, 0x7fffffff

    if-eq v4, v2, :cond_57

    const v2, 0x6d646864

    if-eq v4, v2, :cond_57

    const v2, 0x6d766864

    if-eq v4, v2, :cond_57

    const v2, 0x73696478

    if-eq v4, v2, :cond_57

    const v2, 0x73747364

    if-eq v4, v2, :cond_57

    const v2, 0x73747473

    if-eq v4, v2, :cond_57

    const v2, 0x63747473

    if-eq v4, v2, :cond_57

    const v2, 0x73747363

    if-eq v4, v2, :cond_57

    const v2, 0x7374737a

    if-eq v4, v2, :cond_57

    const v2, 0x73747a32

    if-eq v4, v2, :cond_57

    const v2, 0x7374636f

    if-eq v4, v2, :cond_57

    const v2, 0x636f3634

    if-eq v4, v2, :cond_57

    const v2, 0x73747373

    if-eq v4, v2, :cond_57

    const v2, 0x74666474

    if-eq v4, v2, :cond_57

    const v2, 0x74666864

    if-eq v4, v2, :cond_57

    const v2, 0x746b6864

    if-eq v4, v2, :cond_57

    const v2, 0x74726578

    if-eq v4, v2, :cond_57

    const v2, 0x7472756e

    if-eq v4, v2, :cond_57

    const v2, 0x70737368    # 3.013775E29f

    if-eq v4, v2, :cond_57

    const v2, 0x7361697a

    if-eq v4, v2, :cond_57

    const v2, 0x7361696f

    if-eq v4, v2, :cond_57

    const v2, 0x73656e63

    if-eq v4, v2, :cond_57

    const v2, 0x75756964

    if-eq v4, v2, :cond_57

    const v2, 0x73626770

    if-eq v4, v2, :cond_57

    const v2, 0x73677064

    if-eq v4, v2, :cond_57

    const v2, 0x656c7374

    if-eq v4, v2, :cond_57

    const v2, 0x6d656864

    if-eq v4, v2, :cond_57

    const v2, 0x656d7367

    if-eq v4, v2, :cond_57

    const v2, 0x75647461

    if-eq v4, v2, :cond_57

    const v2, 0x6b657973

    if-eq v4, v2, :cond_57

    const v2, 0x696c7374

    if-ne v4, v2, :cond_55

    goto :goto_28

    :cond_55
    iget-wide v2, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_56

    const/4 v2, 0x0

    iput-object v2, v0, Lʻˆ/ˉʿ;->ʾᵎ:Lᐧˎ/ﹳᐧ;

    const/4 v2, 0x1

    iput v2, v0, Lʻˆ/ˉʿ;->ˏי:I

    goto/16 :goto_0

    :cond_56
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_57
    :goto_28
    iget v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_59

    iget-wide v2, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_58

    new-instance v2, Lᐧˎ/ﹳᐧ;

    iget-wide v7, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    long-to-int v3, v7

    invoke-direct {v2, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v3, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-object v5, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v14, 0x0

    invoke-static {v3, v14, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lʻˆ/ˉʿ;->ʾᵎ:Lᐧˎ/ﹳᐧ;

    const/4 v2, 0x1

    iput v2, v0, Lʻˆ/ˉʿ;->ˏי:I

    goto/16 :goto_0

    :cond_58
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_59
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_5a
    :goto_29
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v6

    iget-wide v9, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    add-long/2addr v6, v9

    const-wide/16 v11, 0x8

    sub-long/2addr v6, v11

    iget v2, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v11, v2

    cmp-long v2, v9, v11

    if-eqz v2, :cond_5b

    iget v2, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    if-ne v2, v3, :cond_5b

    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v8, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v14, 0x0

    invoke-interface {v1, v2, v14, v4}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-static {v8}, Lʻˆ/ᵔᵢ;->ﹳٴ(Lᐧˎ/ﹳᐧ;)V

    iget v2, v8, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    :cond_5b
    new-instance v2, Lʻᴵ/ˈ;

    iget v3, v0, Lʻˆ/ˉʿ;->ʽﹳ:I

    invoke-direct {v2, v3, v6, v7}, Lʻᴵ/ˈ;-><init>(IJ)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v2, v0, Lʻˆ/ˉʿ;->ʻٴ:J

    iget v4, v0, Lʻˆ/ˉʿ;->ـˆ:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5c

    invoke-virtual {v0, v6, v7}, Lʻˆ/ˉʿ;->ﾞʻ(J)V

    goto/16 :goto_0

    :cond_5c
    invoke-virtual {v0}, Lʻˆ/ˉʿ;->ʽ()V

    goto/16 :goto_0

    :cond_5d
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lʻˆ/ˉʿ;->יـ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 3

    .prologue
    iget-object p1, p0, Lʻˆ/ˉʿ;->ˑﹳ:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻˆ/ﾞʻ;

    invoke-virtual {v2}, Lʻˆ/ﾞʻ;->ˑﹳ()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lʻˆ/ˉʿ;->ˉˆ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lʻˆ/ˉʿ;->ᵢˏ:I

    iget-object p1, p0, Lʻˆ/ˉʿ;->ʼᐧ:Lʻᴵ/ʼʼ;

    iget-object p1, p1, Lʻᴵ/ʼʼ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    iput-wide p3, p0, Lʻˆ/ˉʿ;->ʾˋ:J

    iget-object p1, p0, Lʻˆ/ˉʿ;->ᵔʾ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lʻˆ/ˉʿ;->ʽ()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞʻ(J)V
    .locals 54

    .prologue
    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lʻˆ/ˉʿ;->ᵔʾ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻᴵ/ˈ;

    iget-wide v2, v2, Lʻᴵ/ˈ;->ʽʽ:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_61

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lʻᴵ/ˈ;

    iget v2, v3, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget-object v4, v3, Lʻᴵ/ˈ;->ᴵᵔ:Ljava/util/ArrayList;

    iget-object v5, v3, Lʻᴵ/ˈ;->ˈٴ:Ljava/util/ArrayList;

    const v6, 0x6d6f6f76

    const/4 v7, 0x0

    iget v8, v0, Lʻˆ/ˉʿ;->ⁱˊ:I

    const/16 v10, 0xc

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v14, v0, Lʻˆ/ˉʿ;->ʽ:Lʻˆ/ˏי;

    iget-object v15, v0, Lʻˆ/ˉʿ;->ˑﹳ:Landroid/util/SparseArray;

    if-ne v2, v6, :cond_10

    if-nez v14, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Unexpected moov box."

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    move-object v6, v7

    invoke-static {v5}, Lʻˆ/ˉʿ;->ˑﹳ(Ljava/util/List;)Lʽⁱ/ᵔʾ;

    move-result-object v7

    const v1, 0x6d766578

    invoke-virtual {v3, v1}, Lʻᴵ/ˈ;->ˏי(I)Lʻᴵ/ˈ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lʻᴵ/ˈ;->ˈٴ:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-wide/from16 v5, v16

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v4, :cond_5

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v19, 0x0

    move-object/from16 v12, v16

    check-cast v12, Lʻᴵ/ˑﹳ;

    iget v11, v12, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget-object v12, v12, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v20, 0x1

    const v13, 0x74726578

    if-ne v11, v13, :cond_2

    invoke-virtual {v12, v10}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v11

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v10

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v9

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v23, v1

    new-instance v1, Lʻˆ/ʼˎ;

    invoke-direct {v1, v13, v10, v9, v12}, Lʻˆ/ʼˎ;-><init>(IIII)V

    invoke-static {v11, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lʻˆ/ʼˎ;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    move-object/from16 v23, v1

    const v1, 0x6d656864

    if-ne v11, v1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    invoke-static {v1}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v5

    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v23

    const/16 v10, 0xc

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    const/16 v20, 0x1

    const v1, 0x6d657461

    invoke-virtual {v3, v1}, Lʻᴵ/ˈ;->ˏי(I)Lʻᴵ/ˈ;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lʻˆ/ᵔᵢ;->ﾞᴵ(Lʻᴵ/ˈ;)Lʽⁱ/ٴᵢ;

    move-result-object v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    new-instance v4, Lˊﾞ/ʻٴ;

    invoke-direct {v4}, Lˊﾞ/ʻٴ;-><init>()V

    const v9, 0x75647461

    invoke-virtual {v3, v9}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {v9}, Lʻˆ/ᵔᵢ;->ٴﹶ(Lʻᴵ/ˑﹳ;)Lʽⁱ/ٴᵢ;

    move-result-object v9

    invoke-virtual {v4, v9}, Lˊﾞ/ʻٴ;->ⁱˊ(Lʽⁱ/ٴᵢ;)V

    move-object/from16 v18, v9

    goto :goto_5

    :cond_7
    const/16 v18, 0x0

    :goto_5
    new-instance v11, Lʽⁱ/ٴᵢ;

    const v9, 0x6d766864

    invoke-virtual {v3, v9}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    invoke-static {v9}, Lʻˆ/ᵔᵢ;->ᵎﹶ(Lᐧˎ/ﹳᐧ;)Lʻᴵ/ᵔᵢ;

    move-result-object v9

    move/from16 v10, v20

    new-array v12, v10, [Lʽⁱ/ˊʻ;

    aput-object v9, v12, v19

    invoke-direct {v11, v12}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move/from16 v8, v19

    :goto_6
    new-instance v10, Lʻˆ/ˆʾ;

    invoke-direct {v10, v0}, Lʻˆ/ˆʾ;-><init>(Lʻˆ/ˉʿ;)V

    const/4 v9, 0x0

    invoke-static/range {v3 .. v10}, Lʻˆ/ᵔᵢ;->ˆʾ(Lʻᴵ/ˈ;Lˊﾞ/ʻٴ;JLʽⁱ/ᵔʾ;ZZLˆʽ/ˑﹳ;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v3}, Lʻˆ/יـ;->ʽ(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    move/from16 v7, v19

    :goto_7
    if-ge v7, v5, :cond_c

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʻˆ/ـˆ;

    iget-object v9, v8, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v10, v0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    iget v12, v9, Lʻˆ/ˏי;->ⁱˊ:I

    iget v13, v9, Lʻˆ/ˏי;->ﹳٴ:I

    iget-object v14, v9, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    move/from16 v16, v5

    move-object/from16 v17, v6

    iget-wide v5, v9, Lʻˆ/ˏי;->ˑﹳ:J

    invoke-interface {v10, v7, v12}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v10

    move/from16 v21, v7

    invoke-static/range {v17 .. v17}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const/4 v7, 0x1

    if-ne v12, v7, :cond_9

    iget v7, v4, Lˊﾞ/ʻٴ;->ﹳٴ:I

    move-object/from16 v22, v11

    const/4 v11, -0x1

    move-object/from16 v23, v3

    if-eq v7, v11, :cond_a

    iget v3, v4, Lˊﾞ/ʻٴ;->ⁱˊ:I

    if-eq v3, v11, :cond_a

    iput v7, v10, Lʽⁱ/ᵔﹳ;->ˉٴ:I

    iput v3, v10, Lʽⁱ/ᵔﹳ;->ᵎⁱ:I

    goto :goto_8

    :cond_9
    move-object/from16 v23, v3

    move-object/from16 v22, v11

    :cond_a
    :goto_8
    iget-object v3, v14, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    const/4 v7, 0x2

    new-array v11, v7, [Lʽⁱ/ٴᵢ;

    aput-object v18, v11, v19

    const/4 v7, 0x1

    aput-object v22, v11, v7

    invoke-static {v12, v1, v10, v3, v11}, Lʻˆ/יـ;->ˉʿ(ILʽⁱ/ٴᵢ;Lʽⁱ/ᵔﹳ;Lʽⁱ/ٴᵢ;[Lʽⁱ/ٴᵢ;)V

    new-instance v3, Lʻˆ/ﾞʻ;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ne v11, v7, :cond_b

    move/from16 v7, v19

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lʻˆ/ʼˎ;

    goto :goto_9

    :cond_b
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lʻˆ/ʼˎ;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    new-instance v7, Lʽⁱ/ﹳᐧ;

    invoke-direct {v7, v10}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-direct {v3, v9, v8, v11, v7}, Lʻˆ/ﾞʻ;-><init>(Lˊﾞ/ٴᵢ;Lʻˆ/ـˆ;Lʻˆ/ʼˎ;Lʽⁱ/ﹳᐧ;)V

    invoke-virtual {v15, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v7, v0, Lʻˆ/ˉʿ;->ᴵˊ:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lʻˆ/ˉʿ;->ᴵˊ:J

    add-int/lit8 v7, v21, 0x1

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v11, v22

    move-object/from16 v3, v23

    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_c
    iget-object v1, v0, Lʻˆ/ˉʿ;->ٴʼ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v23, v3

    move/from16 v16, v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    move/from16 v3, v16

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_0

    move-object/from16 v4, v23

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʻˆ/ـˆ;

    iget-object v6, v5, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget v7, v6, Lʻˆ/ˏי;->ﹳٴ:I

    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʻˆ/ﾞʻ;

    iget v6, v6, Lʻˆ/ˏי;->ﹳٴ:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_f

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʻˆ/ʼˎ;

    goto :goto_c

    :cond_f
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʻˆ/ʼˎ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_c
    iput-object v5, v7, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iput-object v6, v7, Lʻˆ/ﾞʻ;->ˑﹳ:Lʻˆ/ʼˎ;

    iget-object v5, v7, Lʻˆ/ﾞʻ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    iget-object v6, v7, Lʻˆ/ﾞʻ;->ˆʾ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v5, v6}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    invoke-virtual {v7}, Lʻˆ/ﾞʻ;->ˑﹳ()V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v23, v4

    goto :goto_b

    :cond_10
    const v6, 0x6d6f6f66

    if-ne v2, v6, :cond_60

    if-eqz v14, :cond_11

    const/4 v10, 0x1

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v1, :cond_59

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻᴵ/ˈ;

    iget v3, v2, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const v6, 0x74726166

    if-ne v3, v6, :cond_57

    const v3, 0x74666864

    invoke-virtual {v2, v3}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v3

    iget-object v6, v2, Lʻᴵ/ˈ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v9

    sget-object v11, Lʻˆ/ᵔᵢ;->ﹳٴ:[B

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v11

    if-eqz v10, :cond_12

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    :goto_f
    check-cast v11, Lʻˆ/ﾞʻ;

    goto :goto_10

    :cond_12
    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_f

    :goto_10
    if-nez v11, :cond_13

    move/from16 v23, v1

    const/4 v11, 0x0

    goto :goto_15

    :cond_13
    iget-object v12, v11, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    and-int/lit8 v13, v9, 0x1

    if-eqz v13, :cond_14

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v13

    iput-wide v13, v12, Lʻˆ/ʻٴ;->ⁱˊ:J

    iput-wide v13, v12, Lʻˆ/ʻٴ;->ʽ:J

    :cond_14
    iget-object v13, v11, Lʻˆ/ﾞʻ;->ˑﹳ:Lʻˆ/ʼˎ;

    and-int/lit8 v14, v9, 0x2

    if-eqz v14, :cond_15

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v14

    const/16 v20, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_11

    :cond_15
    iget v14, v13, Lʻˆ/ʼˎ;->ﹳٴ:I

    :goto_11
    and-int/lit8 v23, v9, 0x8

    if-eqz v23, :cond_16

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v23

    move/from16 v53, v23

    move/from16 v23, v1

    move/from16 v1, v53

    goto :goto_12

    :cond_16
    move/from16 v23, v1

    iget v1, v13, Lʻˆ/ʼˎ;->ⁱˊ:I

    :goto_12
    and-int/lit8 v24, v9, 0x10

    if-eqz v24, :cond_17

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v24

    move/from16 v53, v24

    move-object/from16 v24, v3

    move/from16 v3, v53

    goto :goto_13

    :cond_17
    move-object/from16 v24, v3

    iget v3, v13, Lʻˆ/ʼˎ;->ʽ:I

    :goto_13
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_18

    invoke-virtual/range {v24 .. v24}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v9

    goto :goto_14

    :cond_18
    iget v9, v13, Lʻˆ/ʼˎ;->ˈ:I

    :goto_14
    new-instance v13, Lʻˆ/ʼˎ;

    invoke-direct {v13, v14, v1, v3, v9}, Lʻˆ/ʼˎ;-><init>(IIII)V

    iput-object v13, v12, Lʻˆ/ʻٴ;->ﹳٴ:Lʻˆ/ʼˎ;

    :goto_15
    if-nez v11, :cond_19

    goto/16 :goto_3f

    :cond_19
    iget-object v1, v11, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-wide v12, v1, Lʻˆ/ʻٴ;->ʼᐧ:J

    iget-boolean v3, v1, Lʻˆ/ʻٴ;->ᵔﹳ:Z

    invoke-virtual {v11}, Lʻˆ/ﾞʻ;->ˑﹳ()V

    const/4 v9, 0x1

    iput-boolean v9, v11, Lʻˆ/ﾞʻ;->ˉʿ:Z

    const v14, 0x74666474

    invoke-virtual {v2, v14}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v14

    if-eqz v14, :cond_1b

    and-int/lit8 v20, v8, 0x2

    if-nez v20, :cond_1b

    iget-object v3, v14, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v12

    invoke-static {v12}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v12

    if-ne v12, v9, :cond_1a

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v12

    goto :goto_16

    :cond_1a
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v12

    :goto_16
    iput-wide v12, v1, Lʻˆ/ʻٴ;->ʼᐧ:J

    iput-boolean v9, v1, Lʻˆ/ʻٴ;->ᵔﹳ:Z

    goto :goto_17

    :cond_1b
    iput-wide v12, v1, Lʻˆ/ʻٴ;->ʼᐧ:J

    iput-boolean v3, v1, Lʻˆ/ʻٴ;->ᵔﹳ:Z

    :goto_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_18
    const v14, 0x7472756e

    if-ge v9, v3, :cond_1d

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    check-cast v4, Lʻᴵ/ˑﹳ;

    move-object/from16 v24, v5

    iget v5, v4, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    if-ne v5, v14, :cond_1c

    iget-object v4, v4, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v4}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v4

    if-lez v4, :cond_1c

    add-int/2addr v13, v4

    add-int/lit8 v12, v12, 0x1

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    goto :goto_18

    :cond_1d
    move-object/from16 v25, v4

    move-object/from16 v24, v5

    const/4 v4, 0x0

    iput v4, v11, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    iput v4, v11, Lʻˆ/ﾞʻ;->ᵎﹶ:I

    iput v4, v11, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iput v12, v1, Lʻˆ/ʻٴ;->ˈ:I

    iput v13, v1, Lʻˆ/ʻٴ;->ˑﹳ:I

    iget-object v4, v1, Lʻˆ/ʻٴ;->ᵎﹶ:[I

    array-length v4, v4

    if-ge v4, v12, :cond_1e

    new-array v4, v12, [J

    iput-object v4, v1, Lʻˆ/ʻٴ;->ﾞᴵ:[J

    new-array v4, v12, [I

    iput-object v4, v1, Lʻˆ/ʻٴ;->ᵎﹶ:[I

    :cond_1e
    iget-object v4, v1, Lʻˆ/ʻٴ;->ᵔᵢ:[I

    array-length v4, v4

    if-ge v4, v13, :cond_1f

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    new-array v4, v13, [I

    iput-object v4, v1, Lʻˆ/ʻٴ;->ᵔᵢ:[I

    new-array v4, v13, [J

    iput-object v4, v1, Lʻˆ/ʻٴ;->ʼˎ:[J

    new-array v4, v13, [Z

    iput-object v4, v1, Lʻˆ/ʻٴ;->ˆʾ:[Z

    new-array v4, v13, [Z

    iput-object v4, v1, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    :cond_1f
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_19
    const-wide/16 v26, 0x0

    if-ge v4, v3, :cond_38

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lʻᴵ/ˑﹳ;

    const/16 v28, 0x10

    iget v12, v13, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    if-ne v12, v14, :cond_37

    add-int/lit8 v12, v5, 0x1

    iget-object v13, v13, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v14

    sget-object v29, Lʻˆ/ᵔᵢ;->ﹳٴ:[B

    move/from16 v29, v3

    iget-object v3, v11, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v3, v3, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    move/from16 v30, v4

    iget-object v4, v1, Lʻˆ/ʻٴ;->ﹳٴ:Lʻˆ/ʼˎ;

    sget-object v31, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    move/from16 v31, v5

    iget-object v5, v1, Lʻˆ/ʻٴ;->ᵎﹶ:[I

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v32

    aput v32, v5, v31

    iget-object v5, v1, Lʻˆ/ʻٴ;->ﾞᴵ:[J

    move/from16 v33, v7

    move/from16 v32, v8

    iget-wide v7, v1, Lʻˆ/ʻٴ;->ⁱˊ:J

    aput-wide v7, v5, v31

    and-int/lit8 v34, v14, 0x1

    if-eqz v34, :cond_20

    move-object/from16 v34, v5

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v5

    move-wide/from16 v35, v7

    int-to-long v7, v5

    add-long v7, v35, v7

    aput-wide v7, v34, v31

    :cond_20
    and-int/lit8 v5, v14, 0x4

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_1a

    :cond_21
    const/4 v5, 0x0

    :goto_1a
    iget v7, v4, Lʻˆ/ʼˎ;->ˈ:I

    if-eqz v5, :cond_22

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v7

    :cond_22
    and-int/lit16 v8, v14, 0x100

    if-eqz v8, :cond_23

    const/4 v8, 0x1

    goto :goto_1b

    :cond_23
    const/4 v8, 0x0

    :goto_1b
    move/from16 v34, v5

    and-int/lit16 v5, v14, 0x200

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_1c

    :cond_24
    const/4 v5, 0x0

    :goto_1c
    move/from16 v35, v5

    and-int/lit16 v5, v14, 0x400

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_1d

    :cond_25
    const/4 v5, 0x0

    :goto_1d
    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_26

    const/4 v14, 0x1

    :goto_1e
    move/from16 v36, v5

    goto :goto_1f

    :cond_26
    const/4 v14, 0x0

    goto :goto_1e

    :goto_1f
    iget-object v5, v3, Lʻˆ/ˏי;->ʼˎ:[J

    move/from16 v37, v7

    iget-object v7, v3, Lʻˆ/ˏי;->ˆʾ:[J

    if-eqz v5, :cond_27

    move-object/from16 v38, v7

    array-length v7, v5

    move-object/from16 v39, v5

    const/4 v5, 0x1

    if-ne v7, v5, :cond_27

    if-nez v38, :cond_28

    :cond_27
    move v5, v8

    goto :goto_21

    :cond_28
    const/16 v19, 0x0

    aget-wide v40, v39, v19

    cmp-long v5, v40, v26

    if-nez v5, :cond_29

    move v5, v8

    goto :goto_20

    :cond_29
    move v5, v8

    iget-wide v7, v3, Lʻˆ/ˏי;->ˈ:J

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v42, 0xf4240

    move-wide/from16 v44, v7

    invoke-static/range {v40 .. v46}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    aget-wide v42, v38, v19

    const-wide/32 v44, 0xf4240

    move-wide/from16 v39, v7

    iget-wide v7, v3, Lʻˆ/ˏי;->ʽ:J

    move-object/from16 v48, v46

    move-wide/from16 v46, v7

    invoke-static/range {v42 .. v48}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    add-long v7, v39, v7

    move-wide/from16 v39, v7

    iget-wide v7, v3, Lʻˆ/ˏי;->ˑﹳ:J

    cmp-long v7, v39, v7

    if-ltz v7, :cond_2a

    :goto_20
    aget-wide v26, v38, v19

    :cond_2a
    :goto_21
    iget-object v7, v1, Lʻˆ/ʻٴ;->ᵔᵢ:[I

    iget-object v8, v1, Lʻˆ/ʻٴ;->ʼˎ:[J

    move/from16 v38, v5

    iget-object v5, v1, Lʻˆ/ʻٴ;->ˆʾ:[Z

    move-object/from16 v39, v5

    iget v5, v3, Lʻˆ/ˏי;->ⁱˊ:I

    move-object/from16 v40, v7

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2b

    and-int/lit8 v5, v32, 0x1

    if-eqz v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_22

    :cond_2b
    const/4 v5, 0x0

    :goto_22
    iget-object v7, v1, Lʻˆ/ʻٴ;->ᵎﹶ:[I

    aget v7, v7, v31

    add-int/2addr v7, v9

    move-object/from16 v48, v8

    move/from16 v41, v9

    iget-wide v8, v3, Lʻˆ/ˏי;->ʽ:J

    move-wide/from16 v45, v8

    iget-wide v8, v1, Lʻˆ/ʻٴ;->ʼᐧ:J

    move/from16 v3, v41

    :goto_23
    if-ge v3, v7, :cond_36

    if-eqz v38, :cond_2c

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v31

    move/from16 v49, v31

    move/from16 v31, v3

    move/from16 v3, v49

    :goto_24
    move/from16 v49, v5

    goto :goto_25

    :cond_2c
    move/from16 v31, v3

    iget v3, v4, Lʻˆ/ʼˎ;->ⁱˊ:I

    goto :goto_24

    :goto_25
    const-string v5, "Unexpected negative value: "

    if-ltz v3, :cond_35

    if-eqz v35, :cond_2d

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v41

    move/from16 v50, v7

    move/from16 v7, v41

    goto :goto_26

    :cond_2d
    move/from16 v50, v7

    iget v7, v4, Lʻˆ/ʼˎ;->ʽ:I

    :goto_26
    if-ltz v7, :cond_34

    if-eqz v36, :cond_2e

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v5

    goto :goto_27

    :cond_2e
    if-nez v31, :cond_2f

    if-eqz v34, :cond_2f

    move/from16 v5, v37

    goto :goto_27

    :cond_2f
    iget v5, v4, Lʻˆ/ʼˎ;->ˈ:I

    :goto_27
    if-eqz v14, :cond_30

    invoke-virtual {v13}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v41

    move-object/from16 v51, v4

    move/from16 v4, v41

    :goto_28
    move/from16 v52, v5

    goto :goto_29

    :cond_30
    move-object/from16 v51, v4

    const/4 v4, 0x0

    goto :goto_28

    :goto_29
    int-to-long v4, v4

    add-long/2addr v4, v8

    sub-long v41, v4, v26

    const-wide/32 v43, 0xf4240

    sget-object v47, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v41 .. v47}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v48, v31

    move-wide/from16 v41, v4

    iget-boolean v4, v1, Lʻˆ/ʻٴ;->ᵔﹳ:Z

    if-nez v4, :cond_31

    iget-object v4, v11, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-wide v4, v4, Lʻˆ/ـˆ;->ᵔᵢ:J

    add-long v4, v41, v4

    aput-wide v4, v48, v31

    :cond_31
    aput v7, v40, v31

    shr-int/lit8 v4, v52, 0x10

    const/16 v20, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_33

    if-eqz v49, :cond_32

    if-nez v31, :cond_33

    :cond_32
    const/4 v4, 0x1

    goto :goto_2a

    :cond_33
    const/4 v4, 0x0

    :goto_2a
    aput-boolean v4, v39, v31

    int-to-long v3, v3

    add-long/2addr v8, v3

    add-int/lit8 v3, v31, 0x1

    move/from16 v5, v49

    move/from16 v7, v50

    move-object/from16 v4, v51

    goto/16 :goto_23

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v4, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_35
    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_36
    move/from16 v50, v7

    const/4 v4, 0x0

    iput-wide v8, v1, Lʻˆ/ʻٴ;->ʼᐧ:J

    move v5, v12

    move/from16 v9, v50

    goto :goto_2b

    :cond_37
    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v33, v7

    move/from16 v32, v8

    move/from16 v41, v9

    const/4 v4, 0x0

    :goto_2b
    add-int/lit8 v3, v30, 0x1

    move v4, v3

    move/from16 v3, v29

    move/from16 v8, v32

    move/from16 v7, v33

    const v14, 0x7472756e

    goto/16 :goto_19

    :cond_38
    move/from16 v33, v7

    move/from16 v32, v8

    const/4 v4, 0x0

    const/16 v28, 0x10

    iget-object v3, v11, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v3, v3, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v5, v1, Lʻˆ/ʻٴ;->ﹳٴ:Lʻˆ/ʼˎ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Lʻˆ/ʼˎ;->ﹳٴ:I

    iget-object v3, v3, Lʻˆ/ˏי;->ﾞʻ:[Lʻˆ/ʽﹳ;

    if-nez v3, :cond_39

    move-object v3, v4

    goto :goto_2c

    :cond_39
    aget-object v18, v3, v5

    move-object/from16 v3, v18

    :goto_2c
    const v5, 0x7361697a

    invoke-virtual {v2, v5}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v5

    if-eqz v5, :cond_40

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    iget v7, v3, Lʻˆ/ʽﹳ;->ˈ:I

    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v8

    sget-object v9, Lʻˆ/ᵔᵢ;->ﹳٴ:[B

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3a

    invoke-virtual {v5, v14}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_3a
    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v8

    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v9

    iget v11, v1, Lʻˆ/ʻٴ;->ˑﹳ:I

    if-gt v9, v11, :cond_3f

    if-nez v8, :cond_3d

    iget-object v8, v1, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2d
    if-ge v11, v9, :cond_3c

    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v13

    add-int/2addr v12, v13

    if-le v13, v7, :cond_3b

    const/4 v13, 0x1

    goto :goto_2e

    :cond_3b
    const/4 v13, 0x0

    :goto_2e
    aput-boolean v13, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2d

    :cond_3c
    const/4 v8, 0x0

    goto :goto_30

    :cond_3d
    if-le v8, v7, :cond_3e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_3e
    const/4 v5, 0x0

    :goto_2f
    mul-int v12, v8, v9

    iget-object v7, v1, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    const/4 v8, 0x0

    invoke-static {v7, v8, v9, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_30
    iget-object v5, v1, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    iget v7, v1, Lʻˆ/ʻٴ;->ˑﹳ:I

    invoke-static {v5, v9, v7, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v12, :cond_40

    iget-object v5, v1, Lʻˆ/ʻٴ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v5, v12}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    const/4 v7, 0x1

    iput-boolean v7, v1, Lʻˆ/ʻٴ;->ٴﹶ:Z

    iput-boolean v7, v1, Lʻˆ/ʻٴ;->ˉˆ:Z

    goto :goto_31

    :cond_3f
    const-string v2, "Saiz sample count "

    const-string v3, " is greater than fragment sample count"

    invoke-static {v9, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lʻˆ/ʻٴ;->ˑﹳ:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_40
    :goto_31
    const v5, 0x7361696f

    invoke-virtual {v2, v5}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v5

    if-eqz v5, :cond_44

    iget-object v5, v5, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v7

    sget-object v8, Lʻˆ/ᵔᵢ;->ﹳٴ:[B

    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_41

    invoke-virtual {v5, v14}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_41
    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v8

    if-ne v8, v9, :cond_43

    invoke-static {v7}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v7

    iget-wide v8, v1, Lʻˆ/ʻٴ;->ʽ:J

    if-nez v7, :cond_42

    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v11

    goto :goto_32

    :cond_42
    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v11

    :goto_32
    add-long/2addr v8, v11

    iput-wide v8, v1, Lʻˆ/ʻٴ;->ʽ:J

    goto :goto_33

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected saio entry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_44
    :goto_33
    const v5, 0x73656e63

    invoke-virtual {v2, v5}, Lʻᴵ/ˈ;->ʽﹳ(I)Lʻᴵ/ˑﹳ;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v2, v2, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/4 v8, 0x0

    invoke-static {v2, v8, v1}, Lʻˆ/ˉʿ;->ᵔᵢ(Lᐧˎ/ﹳᐧ;ILʻˆ/ʻٴ;)V

    :cond_45
    if-eqz v3, :cond_46

    iget-object v2, v3, Lʻˆ/ʽﹳ;->ⁱˊ:Ljava/lang/String;

    move-object/from16 v36, v2

    goto :goto_34

    :cond_46
    move-object/from16 v36, v4

    :goto_34
    move-object v2, v4

    move-object v3, v2

    const/4 v5, 0x0

    :goto_35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_49

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʻᴵ/ˑﹳ;

    iget-object v8, v7, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    iget v7, v7, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const v9, 0x73626770

    const v11, 0x73656967

    if-ne v7, v9, :cond_47

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v7

    if-ne v7, v11, :cond_48

    move-object v2, v8

    goto :goto_36

    :cond_47
    const/16 v9, 0xc

    const v12, 0x73677064

    if-ne v7, v12, :cond_48

    invoke-virtual {v8, v9}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v7

    if-ne v7, v11, :cond_48

    move-object v3, v8

    :cond_48
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_49
    const/16 v9, 0xc

    if-eqz v2, :cond_4a

    if-nez v3, :cond_4b

    :cond_4a
    const/4 v5, 0x2

    :goto_37
    const/4 v8, 0x1

    goto/16 :goto_3c

    :cond_4b
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v5

    invoke-static {v5}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v5

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4c

    invoke-virtual {v2, v7}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_4c
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    if-ne v2, v8, :cond_54

    invoke-virtual {v3, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    invoke-static {v2}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v2

    invoke-virtual {v3, v7}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    if-ne v2, v8, :cond_4e

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v11

    cmp-long v2, v11, v26

    if-eqz v2, :cond_4d

    const/4 v5, 0x2

    goto :goto_38

    :cond_4d
    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_4e
    const/4 v5, 0x2

    if-lt v2, v5, :cond_4f

    invoke-virtual {v3, v7}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_4f
    :goto_38
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v2, v11, v13

    if-nez v2, :cond_53

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    and-int/lit16 v11, v2, 0xf0

    shr-int/lit8 v39, v11, 0x4

    and-int/lit8 v40, v2, 0xf

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    if-ne v2, v8, :cond_50

    const/16 v35, 0x1

    goto :goto_39

    :cond_50
    const/16 v35, 0x0

    :goto_39
    if-nez v35, :cond_51

    goto :goto_37

    :cond_51
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v37

    move/from16 v2, v28

    new-array v7, v2, [B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    if-nez v37, :cond_52

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    new-array v11, v2, [B

    invoke-virtual {v3, v11, v8, v2}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    move-object/from16 v41, v11

    :goto_3a
    const/4 v8, 0x1

    goto :goto_3b

    :cond_52
    move-object/from16 v41, v4

    goto :goto_3a

    :goto_3b
    iput-boolean v8, v1, Lʻˆ/ʻٴ;->ٴﹶ:Z

    new-instance v34, Lʻˆ/ʽﹳ;

    move-object/from16 v38, v7

    invoke-direct/range {v34 .. v41}, Lʻˆ/ʽﹳ;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v2, v34

    iput-object v2, v1, Lʻˆ/ʻٴ;->ˉʿ:Lʻˆ/ʽﹳ;

    goto :goto_3c

    :cond_53
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_54
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :goto_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_3d
    if-ge v7, v2, :cond_58

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʻᴵ/ˑﹳ;

    iget v11, v3, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const v12, 0x75756964

    if-ne v11, v12, :cond_56

    iget-object v3, v3, Lʻᴵ/ˑﹳ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v11, v0, Lʻˆ/ˉʿ;->ʼˎ:[B

    const/4 v12, 0x0

    const/16 v13, 0x10

    invoke-virtual {v3, v11, v12, v13}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    sget-object v4, Lʻˆ/ˉʿ;->ˑٴ:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_3e

    :cond_55
    invoke-static {v3, v13, v1}, Lʻˆ/ˉʿ;->ᵔᵢ(Lᐧˎ/ﹳᐧ;ILʻˆ/ʻٴ;)V

    goto :goto_3e

    :cond_56
    const/4 v12, 0x0

    const/16 v13, 0x10

    const/16 v14, 0x8

    :goto_3e
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_3d

    :cond_57
    move/from16 v23, v1

    :goto_3f
    move-object/from16 v25, v4

    move-object/from16 v24, v5

    move/from16 v33, v7

    move/from16 v32, v8

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v9, 0xc

    :cond_58
    const/4 v12, 0x0

    const/16 v14, 0x8

    add-int/lit8 v7, v33, 0x1

    move/from16 v1, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move/from16 v8, v32

    goto/16 :goto_e

    :cond_59
    move-object/from16 v24, v5

    const/4 v12, 0x0

    invoke-static/range {v24 .. v24}, Lʻˆ/ˉʿ;->ˑﹳ(Ljava/util/List;)Lʽⁱ/ᵔʾ;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v7, v12

    :goto_40
    if-ge v7, v2, :cond_5c

    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʻˆ/ﾞʻ;

    iget-object v4, v3, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v4, v4, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v5, v3, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-object v5, v5, Lʻˆ/ʻٴ;->ﹳٴ:Lʻˆ/ʼˎ;

    sget-object v6, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v5, v5, Lʻˆ/ʼˎ;->ﹳٴ:I

    iget-object v4, v4, Lʻˆ/ˏי;->ﾞʻ:[Lʻˆ/ʽﹳ;

    if-nez v4, :cond_5a

    const/4 v4, 0x0

    goto :goto_41

    :cond_5a
    aget-object v4, v4, v5

    :goto_41
    if-eqz v4, :cond_5b

    iget-object v4, v4, Lʻˆ/ʽﹳ;->ⁱˊ:Ljava/lang/String;

    goto :goto_42

    :cond_5b
    const/4 v4, 0x0

    :goto_42
    invoke-virtual {v1, v4}, Lʽⁱ/ᵔʾ;->ﹳٴ(Ljava/lang/String;)Lʽⁱ/ᵔʾ;

    move-result-object v4

    iget-object v5, v3, Lʻˆ/ﾞʻ;->ˆʾ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v5}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v5

    iput-object v4, v5, Lʽⁱ/ᵔﹳ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v5}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v3, v3, Lʻˆ/ﾞʻ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    invoke-interface {v3, v4}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_5c
    iget-wide v1, v0, Lʻˆ/ˉʿ;->ʾˋ:J

    cmp-long v1, v1, v16

    if-eqz v1, :cond_0

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_43
    if-ge v12, v1, :cond_5f

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻˆ/ﾞʻ;

    iget-wide v3, v0, Lʻˆ/ˉʿ;->ʾˋ:J

    iget v5, v2, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    :goto_44
    iget-object v6, v2, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget v7, v6, Lʻˆ/ʻٴ;->ˑﹳ:I

    if-ge v5, v7, :cond_5e

    iget-object v7, v6, Lʻˆ/ʻٴ;->ʼˎ:[J

    aget-wide v8, v7, v5

    cmp-long v7, v8, v3

    if-gtz v7, :cond_5e

    iget-object v6, v6, Lʻˆ/ʻٴ;->ˆʾ:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_5d

    iput v5, v2, Lʻˆ/ﾞʻ;->ʼˎ:I

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_5e
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :cond_5f
    move-wide/from16 v2, v16

    iput-wide v2, v0, Lʻˆ/ˉʿ;->ʾˋ:J

    goto/16 :goto_0

    :cond_60
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʻᴵ/ˈ;

    iget-object v1, v1, Lʻᴵ/ˈ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_61
    invoke-virtual {v0}, Lʻˆ/ˉʿ;->ʽ()V

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lʻˆ/יـ;->ᵔʾ(Lˊﾞ/ʼᐧ;ZZ)Lˊﾞ/ᴵᵔ;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :goto_0
    iput-object v2, p0, Lʻˆ/ˉʿ;->יـ:Lʼʻ/ʿᵢ;

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method
