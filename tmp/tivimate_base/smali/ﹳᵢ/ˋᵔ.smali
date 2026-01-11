.class public final Lﹳᵢ/ˋᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;
.implements Lˊﾞ/ᵔﹳ;
.implements Lᵔⁱ/ʼˎ;
.implements Lᵔⁱ/ﾞʻ;
.implements Lﹳᵢ/ˈⁱ;


# static fields
.field public static final ʽᵔ:Lʽⁱ/ﹳᐧ;

.field public static final ـᵎ:Ljava/util/Map;


# instance fields
.field public ʻˋ:Z

.field public ʻᵎ:Z

.field public ʼˈ:Lﾞˊ/ⁱˊ;

.field public final ʽʽ:Lⁱᴵ/ﾞʻ;

.field public final ʾˋ:Landroid/net/Uri;

.field public ʿ:Z

.field public ʿᵢ:Lᐧᵎ/ᵢי;

.field public final ˆﾞ:Lˑי/ʽ;

.field public final ˈʿ:Lﹳᵢ/ᵔי;

.field public ˈˏ:Z

.field public final ˈٴ:Lʻᴵ/יـ;

.field public ˈⁱ:Z

.field public ˉـ:Z

.field public final ˉٴ:Lᵔⁱ/ˑﹳ;

.field public final ˊʻ:Lⁱᴵ/ʼˎ;

.field public ˊˋ:Lﹳᵢ/ـˆ;

.field public ˊᵔ:Z

.field public final ˋᵔ:Landroid/os/Handler;

.field public ˏᵢ:I

.field public ˑʼ:I

.field public final ˑٴ:Lﹳᵢ/ᵔי;

.field public ـˏ:[Lﹳᵢ/ᴵˑ;

.field public ـﹶ:I

.field public final ٴʼ:Lʽⁱ/ﹳᐧ;

.field public final ٴᵢ:Lﹳᵢ/ʼˈ;

.field public ٴﹳ:Z

.field public ᐧᴵ:Z

.field public ᐧﾞ:J

.field public ᴵʼ:Z

.field public final ᴵˊ:Lـˊ/ﾞᴵ;

.field public ᴵˑ:Z

.field public final ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ᵎʻ:Z

.field public final ᵎˊ:J

.field public ᵎᵔ:Lˊﾞ/ʾˋ;

.field public final ᵎⁱ:J

.field public final ᵔי:Lᵔⁱ/ˉʿ;

.field public final ᵔٴ:Lᐧˎ/ˑﹳ;

.field public ﹳـ:[Lﹳᵢ/ˑٴ;

.field public ﹳﹳ:J

.field public ﹶᐧ:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lﹳᵢ/ˋᵔ;->ـᵎ:Ljava/util/Map;

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v1, "icy"

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "application/x-icy"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v1, Lʽⁱ/ﹳᐧ;

    invoke-direct {v1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    sput-object v1, Lﹳᵢ/ˋᵔ;->ʽᵔ:Lʽⁱ/ﹳᐧ;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lـˊ/ﾞᴵ;Lˑי/ʽ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ʼˈ;Lᵔⁱ/ˑﹳ;ILʽⁱ/ﹳᐧ;JLٴʿ/ﹳٴ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ʾˋ:Landroid/net/Uri;

    iput-object p2, p0, Lﹳᵢ/ˋᵔ;->ᴵˊ:Lـˊ/ﾞᴵ;

    iput-object p4, p0, Lﹳᵢ/ˋᵔ;->ʽʽ:Lⁱᴵ/ﾞʻ;

    iput-object p5, p0, Lﹳᵢ/ˋᵔ;->ˊʻ:Lⁱᴵ/ʼˎ;

    iput-object p6, p0, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    iput-object p7, p0, Lﹳᵢ/ˋᵔ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p8, p0, Lﹳᵢ/ˋᵔ;->ٴᵢ:Lﹳᵢ/ʼˈ;

    iput-object p9, p0, Lﹳᵢ/ˋᵔ;->ˉٴ:Lᵔⁱ/ˑﹳ;

    int-to-long p1, p10

    iput-wide p1, p0, Lﹳᵢ/ˋᵔ;->ᵎⁱ:J

    iput-object p11, p0, Lﹳᵢ/ˋᵔ;->ٴʼ:Lʽⁱ/ﹳᐧ;

    if-eqz p14, :cond_0

    new-instance p1, Lᵔⁱ/ˉʿ;

    invoke-direct {p1, p14}, Lᵔⁱ/ˉʿ;-><init>(Lٴʿ/ﹳٴ;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lᵔⁱ/ˉʿ;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    iput-object p3, p0, Lﹳᵢ/ˋᵔ;->ˆﾞ:Lˑי/ʽ;

    iput-wide p12, p0, Lﹳᵢ/ˋᵔ;->ᵎˊ:J

    new-instance p1, Lᐧˎ/ˑﹳ;

    invoke-direct {p1}, Lᐧˎ/ˑﹳ;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ᵔٴ:Lᐧˎ/ˑﹳ;

    new-instance p1, Lﹳᵢ/ᵔי;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lﹳᵢ/ᵔי;-><init>(Lﹳᵢ/ˋᵔ;I)V

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ˈʿ:Lﹳᵢ/ᵔי;

    new-instance p1, Lﹳᵢ/ᵔי;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lﹳᵢ/ᵔי;-><init>(Lﹳᵢ/ˋᵔ;I)V

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ˑٴ:Lﹳᵢ/ᵔי;

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lﹳᵢ/ˑٴ;

    iput-object p2, p0, Lﹳᵢ/ˋᵔ;->ﹳـ:[Lﹳᵢ/ˑٴ;

    new-array p1, p1, [Lﹳᵢ/ᴵˑ;

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    const/4 p1, 0x1

    iput p1, p0, Lﹳᵢ/ˋᵔ;->ˏᵢ:I

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 0

    return-void
.end method

.method public final ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 13

    .prologue
    check-cast p1, Lﹳᵢ/ᵔٴ;

    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lﹳᵢ/ˋᵔ;->ʾᵎ(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    iget-boolean v4, p0, Lﹳᵢ/ˋᵔ;->ᐧᴵ:Z

    iget-object v5, p0, Lﹳᵢ/ˋᵔ;->ٴᵢ:Lﹳᵢ/ʼˈ;

    invoke-virtual {v5, v2, v3, v0, v4}, Lﹳᵢ/ʼˈ;->ʾˋ(JLˊﾞ/ʾˋ;Z)V

    :cond_1
    iget-object v0, p1, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    new-instance v3, Lﹳᵢ/ﹳᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v4, p4

    invoke-direct {v3, v4, v5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, p1, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iget-wide v11, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˏי(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 5

    .prologue
    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ٴʼ:Lʽⁱ/ﹳᐧ;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lﹳᵢ/ˋᵔ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    invoke-interface {v0, p1}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    new-instance p1, Lˊﾞ/ʾᵎ;

    const/4 v0, 0x1

    new-array v2, v0, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    new-array v0, v0, [J

    aput-wide v3, v0, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v3, v4, v2, v0}, Lˊﾞ/ʾᵎ;-><init>(J[J[J)V

    invoke-virtual {p0, p1}, Lﹳᵢ/ˋᵔ;->ᴵᵔ(Lˊﾞ/ʾˋ;)V

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ᵔᵢ()V

    iput-wide p2, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    return-void

    :cond_0
    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ᵔٴ:Lᐧˎ/ˑﹳ;

    invoke-virtual {p1}, Lᐧˎ/ˑﹳ;->ˑﹳ()Z

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ˊʻ()V

    return-void
.end method

.method public final ʼᐧ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    iget v1, p0, Lﹳᵢ/ˋᵔ;->ˏᵢ:I

    invoke-virtual {v0, v1}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v0

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    iget-object v2, v1, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    if-nez v2, :cond_5

    iget-object v1, v1, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    if-eqz v1, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    iget v0, v1, Lᵔⁱ/ˆʾ;->ʾˋ:I

    :cond_0
    iget-object v2, v1, Lᵔⁱ/ˆʾ;->ᴵᵔ:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v1, v1, Lᵔⁱ/ˆʾ;->ˊʻ:I

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    return-void

    :cond_5
    throw v2
.end method

.method public final ʽ()I
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget v5, v4, Lﹳᵢ/ᴵˑ;->ᵔﹳ:I

    iget v4, v4, Lﹳᵢ/ᴵˑ;->ʼᐧ:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final ʽʽ(I)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ʻˋ:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ˉـ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    iput-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ʻˋ:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    iput-wide v1, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    iput v0, p0, Lﹳᵢ/ˋᵔ;->ˑʼ:I

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ʽﹳ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lﹳᵢ/ᵔٴ;

    iget-object v2, v1, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    if-nez p6, :cond_0

    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-object v3, v1, Lﹳᵢ/ᵔٴ;->ٴʼ:Lـˊ/ᵔᵢ;

    invoke-direct {v2, v3}, Lﹳᵢ/ﹳᐧ;-><init>(Lـˊ/ᵔᵢ;)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    new-instance v3, Lﹳᵢ/ﹳᐧ;

    iget-object v2, v2, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v4, p4

    invoke-direct {v3, v4, v5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    move-object v5, v3

    :goto_0
    iget-wide v11, v1, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iget-wide v13, v0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-object v4, v0, Lﹳᵢ/ˋᵔ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v15, p6

    invoke-virtual/range {v4 .. v15}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final ʾˋ()V
    .locals 15

    .prologue
    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ᵎˊ:J

    iget-boolean v2, p0, Lﹳᵢ/ˋᵔ;->ᵎʻ:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lﹳᵢ/ˋᵔ;->ˈⁱ:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ᵔٴ:Lᐧˎ/ˑﹳ;

    monitor-enter v2

    :try_start_0
    iput-boolean v4, v2, Lᐧˎ/ˑﹳ;->ⁱˊ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v2, v2

    new-array v3, v2, [Lʽⁱ/ـˏ;

    new-array v5, v2, [Z

    move v6, v4

    :goto_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    if-ge v6, v2, :cond_a

    iget-object v10, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v10, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v11}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v11}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move v13, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v9

    :goto_3
    aput-boolean v13, v5, v6

    iget-boolean v14, p0, Lﹳᵢ/ˋᵔ;->ˉـ:Z

    or-int/2addr v13, v14

    iput-boolean v13, p0, Lﹳᵢ/ˋᵔ;->ˉـ:Z

    invoke-static {v11}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v11

    cmp-long v7, v0, v7

    if-eqz v7, :cond_5

    if-ne v2, v9, :cond_5

    if-eqz v11, :cond_5

    move v7, v9

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    iput-boolean v7, p0, Lﹳᵢ/ˋᵔ;->ʿ:Z

    iget-object v7, p0, Lﹳᵢ/ˋᵔ;->ʼˈ:Lﾞˊ/ⁱˊ;

    if-eqz v7, :cond_9

    iget v8, v7, Lﾞˊ/ⁱˊ;->ﹳٴ:I

    if-nez v12, :cond_6

    iget-object v11, p0, Lﹳᵢ/ˋᵔ;->ﹳـ:[Lﹳᵢ/ˑٴ;

    aget-object v11, v11, v6

    iget-boolean v11, v11, Lﹳᵢ/ˑٴ;->ⁱˊ:Z

    if-eqz v11, :cond_8

    :cond_6
    iget-object v11, v10, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    if-nez v11, :cond_7

    new-instance v11, Lʽⁱ/ٴᵢ;

    new-array v13, v9, [Lʽⁱ/ˊʻ;

    aput-object v7, v13, v4

    invoke-direct {v11, v13}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    goto :goto_5

    :cond_7
    new-array v13, v9, [Lʽⁱ/ˊʻ;

    aput-object v7, v13, v4

    invoke-virtual {v11, v13}, Lʽⁱ/ٴᵢ;->ﹳٴ([Lʽⁱ/ˊʻ;)Lʽⁱ/ٴᵢ;

    move-result-object v11

    :goto_5
    invoke-virtual {v10}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v7

    iput-object v11, v7, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    new-instance v10, Lʽⁱ/ﹳᐧ;

    invoke-direct {v10, v7}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    :cond_8
    if-eqz v12, :cond_9

    iget v7, v10, Lʽⁱ/ﹳᐧ;->ᵔᵢ:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_9

    iget v7, v10, Lʽⁱ/ﹳᐧ;->ʼˎ:I

    if-ne v7, v11, :cond_9

    if-eq v8, v11, :cond_9

    invoke-virtual {v10}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v7

    iput v8, v7, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    new-instance v10, Lʽⁱ/ﹳᐧ;

    invoke-direct {v10, v7}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    :cond_9
    iget-object v7, p0, Lﹳᵢ/ˋᵔ;->ʽʽ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v7, v10}, Lⁱᴵ/ﾞʻ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v7

    invoke-virtual {v10}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v8

    iput v7, v8, Lʽⁱ/ᵔﹳ;->ᵔٴ:I

    new-instance v7, Lʽⁱ/ﹳᐧ;

    invoke-direct {v7, v8}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    new-instance v8, Lʽⁱ/ـˏ;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    new-array v9, v9, [Lʽⁱ/ﹳᐧ;

    aput-object v7, v9, v4

    invoke-direct {v8, v10, v9}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v8, v3, v6

    iget-boolean v8, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    iget-boolean v7, v7, Lʽⁱ/ﹳᐧ;->ˏי:Z

    or-int/2addr v7, v8

    iput-boolean v7, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    new-instance v2, Lᐧᵎ/ᵢי;

    new-instance v4, Lﹳᵢ/ʻᵎ;

    invoke-direct {v4, v3}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v4, v2, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v5, v2, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iget v3, v4, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    new-array v4, v3, [Z

    iput-object v4, v2, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    new-array v3, v3, [Z

    iput-object v3, v2, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v2, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-boolean v2, p0, Lﹳᵢ/ˋᵔ;->ʿ:Z

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_b

    iput-wide v0, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    new-instance v0, Lﹳᵢ/ˆﾞ;

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-direct {v0, p0, v1}, Lﹳᵢ/ˆﾞ;-><init>(Lﹳᵢ/ˋᵔ;Lˊﾞ/ʾˋ;)V

    iput-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    :cond_b
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ٴᵢ:Lﹳᵢ/ʼˈ;

    iget-wide v1, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    iget-boolean v4, p0, Lﹳᵢ/ˋᵔ;->ᐧᴵ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lﹳᵢ/ʼˈ;->ʾˋ(JLˊﾞ/ʾˋ;Z)V

    iput-boolean v9, p0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    :goto_6
    return-void
.end method

.method public final ʾᵎ(Z)J
    .locals 5

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ᵔﹳ()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 8

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v1, v0, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ʻᵎ;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Z

    iget v2, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v7, p1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    check-cast v5, Lﹳᵢ/ˈʿ;

    iget v5, v5, Lﹳᵢ/ˈʿ;->ʾˋ:I

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v7, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    sub-int/2addr v7, v6

    iput v7, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lﹳᵢ/ˋᵔ;->ᴵʼ:Z

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lﹳᵢ/ˋᵔ;->ʿ:Z

    if-nez p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lﹶʽ/ˏי;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-interface {v4, v3}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-interface {v4}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v5

    invoke-virtual {v1, v5}, Lﹳᵢ/ʻᵎ;->ⁱˊ(Lʽⁱ/ـˏ;)I

    move-result v5

    aget-boolean v7, v0, v5

    xor-int/2addr v7, v6

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v7, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    add-int/2addr v7, v6

    iput v7, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    aput-boolean v6, v0, v5

    iget-boolean v7, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    invoke-interface {v4}, Lﹶʽ/ˏי;->ﾞʻ()Lʽⁱ/ﹳᐧ;

    move-result-object v4

    iget-boolean v4, v4, Lʽⁱ/ﹳᐧ;->ˏי:Z

    or-int/2addr v4, v7

    iput-boolean v4, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    new-instance v4, Lﹳᵢ/ˈʿ;

    invoke-direct {v4, p0, v5}, Lﹳᵢ/ˈʿ;-><init>(Lﹳᵢ/ˋᵔ;I)V

    aput-object v4, p3, v2

    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2, v6, p5, p6}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lﹳᵢ/ˋᵔ;->ʻˋ:Z

    iput-boolean v3, p0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    iput-boolean v3, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    invoke-virtual {p4}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ﹳٴ()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lﹳᵢ/ˋᵔ;->ﹳᐧ(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v6, p0, Lﹳᵢ/ˋᵔ;->ᴵʼ:Z

    return-wide p5
.end method

.method public final ˈ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵔٴ:Lᐧˎ/ˑﹳ;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lᐧˎ/ˑﹳ;->ⁱˊ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈٴ(Lﹳᵢ/ˑٴ;)Lˊﾞ/ٴᵢ;
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ﹳـ:[Lﹳᵢ/ˑٴ;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lﹳᵢ/ˑٴ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ˈⁱ:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lﹳᵢ/ˑٴ;->ﹳٴ:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lˊﾞ/ᵔʾ;

    invoke-direct {p1}, Lˊﾞ/ᵔʾ;-><init>()V

    return-object p1

    :cond_2
    new-instance v1, Lﹳᵢ/ᴵˑ;

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ʽʽ:Lⁱᴵ/ﾞʻ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ˉٴ:Lᵔⁱ/ˑﹳ;

    iget-object v4, p0, Lﹳᵢ/ˋᵔ;->ˊʻ:Lⁱᴵ/ʼˎ;

    invoke-direct {v1, v3, v2, v4}, Lﹳᵢ/ᴵˑ;-><init>(Lᵔⁱ/ˑﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;)V

    iput-object p0, v1, Lﹳᵢ/ᴵˑ;->ﾞᴵ:Lﹳᵢ/ˈⁱ;

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ﹳـ:[Lﹳᵢ/ˑٴ;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lﹳᵢ/ˑٴ;

    aput-object p1, v2, v0

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iput-object v2, p0, Lﹳᵢ/ˋᵔ;->ﹳـ:[Lﹳᵢ/ˑٴ;

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lﹳᵢ/ᴵˑ;

    aput-object v1, p1, v0

    iput-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    return-object v1
.end method

.method public final ˉʿ()J
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ʽ()I

    move-result v0

    iget v2, p0, Lﹳᵢ/ˋᵔ;->ˑʼ:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 11

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ˉـ:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v10, v9, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    check-cast v10, [Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    check-cast v9, [Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_0
    iget-boolean v10, v9, Lﹳᵢ/ᴵˑ;->ـˆ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    iget-object v9, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lﹳᵢ/ᴵˑ;->ᵔﹳ()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lﹳᵢ/ˋᵔ;->ʾᵎ(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final ˊʻ()V
    .locals 10

    .prologue
    new-instance v0, Lﹳᵢ/ᵔٴ;

    iget-object v4, p0, Lﹳᵢ/ˋᵔ;->ˆﾞ:Lˑי/ʽ;

    iget-object v6, p0, Lﹳᵢ/ˋᵔ;->ᵔٴ:Lᐧˎ/ˑﹳ;

    iget-object v2, p0, Lﹳᵢ/ˋᵔ;->ʾˋ:Landroid/net/Uri;

    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ᴵˊ:Lـˊ/ﾞᴵ;

    move-object v5, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lﹳᵢ/ᵔٴ;-><init>(Lﹳᵢ/ˋᵔ;Landroid/net/Uri;Lـˊ/ﾞᴵ;Lˑי/ʽ;Lﹳᵢ/ˋᵔ;Lᐧˎ/ˑﹳ;)V

    iget-boolean v2, v1, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ᵢˏ()Z

    move-result v2

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v2, v1, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-wide v8, v1, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    iput-boolean v7, v1, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    iput-wide v4, v1, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    return-void

    :cond_0
    iget-object v2, v1, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, v1, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    invoke-interface {v2, v8, v9}, Lˊﾞ/ʾˋ;->ˆʾ(J)Lˊﾞ/ᵢˏ;

    move-result-object v2

    iget-object v2, v2, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    iget-wide v2, v2, Lˊﾞ/ᴵˊ;->ⁱˊ:J

    iget-wide v8, v1, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    iget-object v6, v0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iput-wide v2, v6, Lʽⁱ/ˏי;->ﹳٴ:J

    iput-wide v8, v0, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iput-boolean v7, v0, Lﹳᵢ/ᵔٴ;->ˉٴ:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lﹳᵢ/ᵔٴ;->ᵔי:Z

    iget-object v3, v1, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v6, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v3, v2

    iget-wide v8, v1, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    iput-wide v8, v7, Lﹳᵢ/ᴵˑ;->ˏי:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-wide v4, v1, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    :cond_2
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ʽ()I

    move-result v2

    iput v2, v1, Lﹳᵢ/ˋᵔ;->ˑʼ:I

    iget-object v2, v1, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    iget v3, v1, Lﹳᵢ/ˋᵔ;->ˏᵢ:I

    invoke-virtual {v2, v3}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v2

    iget-object v3, v1, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    invoke-virtual {v3, v0, p0, v2}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    return-void
.end method

.method public final ˏי(J)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ʿ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, v4, p1, p2}, Lﹳᵢ/ᴵˑ;->ˆʾ(ZJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ˑﹳ(Lˊﾞ/ʾˋ;)V
    .locals 2

    new-instance v0, Lᐧᵢ/ˉʿ;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final יـ()V
    .locals 2

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ˈʿ:Lﹳᵢ/ᵔי;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lﹳᵢ/ᵔٴ;

    iget-object v2, v1, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    new-instance v4, Lﹳᵢ/ﹳᐧ;

    iget-object v2, v2, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v2, p4

    invoke-direct {v4, v2, v3}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-wide v2, v1, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    iget-wide v2, v0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    new-instance v2, Lʼٴ/ʾᵎ;

    const/16 v3, 0xb

    move-object/from16 v14, p6

    move/from16 v5, p7

    invoke-direct {v2, v5, v3, v14}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object v3, v0, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    invoke-virtual {v3, v2}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    const/4 v8, 0x1

    if-nez v7, :cond_0

    sget-object v2, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Lﹳᵢ/ˋᵔ;->ʽ()I

    move-result v7

    iget v9, v0, Lﹳᵢ/ˋᵔ;->ˑʼ:I

    const/4 v10, 0x0

    if-le v7, v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    iget-boolean v11, v0, Lﹳᵢ/ˋᵔ;->ˈˏ:Z

    if-nez v11, :cond_5

    iget-object v11, v0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    if-eqz v11, :cond_2

    invoke-interface {v11}, Lˊﾞ/ʾˋ;->ˉʿ()J

    move-result-wide v11

    cmp-long v5, v11, v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v5, v0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lﹳᵢ/ˋᵔ;->ٴᵢ()Z

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v8, v0, Lﹳᵢ/ˋᵔ;->ʻˋ:Z

    sget-object v2, Lᵔⁱ/ˉʿ;->ᴵᵔ:Lʼˊ/ⁱˊ;

    goto :goto_4

    :cond_3
    iget-boolean v5, v0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    iput-boolean v5, v0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    iput v10, v0, Lﹳᵢ/ˋᵔ;->ˑʼ:I

    iget-object v7, v0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v11, v7

    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v7, v12

    invoke-virtual {v13, v10}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, v1, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iput-wide v5, v7, Lʽⁱ/ˏי;->ﹳٴ:J

    iput-wide v5, v1, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iput-boolean v8, v1, Lﹳᵢ/ᵔٴ;->ˉٴ:Z

    iput-boolean v10, v1, Lﹳᵢ/ᵔٴ;->ᵔי:Z

    goto :goto_3

    :cond_5
    :goto_2
    iput v7, v0, Lﹳᵢ/ˋᵔ;->ˑʼ:I

    :goto_3
    new-instance v5, Lʼˊ/ⁱˊ;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6, v9}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    move-object v2, v5

    :goto_4
    invoke-virtual {v2}, Lʼˊ/ⁱˊ;->ﹳٴ()Z

    move-result v3

    xor-int/lit8 v15, v3, 0x1

    iget-wide v10, v1, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iget-wide v12, v0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-object v3, v0, Lﹳᵢ/ˋᵔ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽﹳ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public final ٴᵢ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 1

    .prologue
    iget-boolean p1, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ʻˋ:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ٴʼ:Lʽⁱ/ﹳᐧ;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵔٴ:Lᐧˎ/ˑﹳ;

    invoke-virtual {v0}, Lᐧˎ/ˑﹳ;->ˑﹳ()Z

    move-result v0

    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ˊʻ()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᴵˊ(I)V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v1, v0, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    check-cast v1, [Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ʻᵎ;

    invoke-virtual {v0, p1}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v0, v0, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v5, v0, v2

    iget-object v0, v5, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    iget-wide v8, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    iget-object v3, p0, Lﹳᵢ/ˋᵔ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ٴﹶ(ILʽⁱ/ﹳᐧ;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final ᴵᵔ(Lˊﾞ/ʾˋ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʼˈ:Lﾞˊ/ⁱˊ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lˊﾞ/יـ;

    invoke-direct {v0, v1, v2}, Lˊﾞ/יـ;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-interface {p1}, Lˊﾞ/ʾˋ;->ˉʿ()J

    move-result-wide v3

    iput-wide v3, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ˈˏ:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lˊﾞ/ʾˋ;->ˉʿ()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ᐧᴵ:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, Lﹳᵢ/ˋᵔ;->ˏᵢ:I

    iget-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ٴᵢ:Lﹳᵢ/ʼˈ;

    iget-wide v2, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    invoke-virtual {v1, v2, v3, p1, v0}, Lﹳᵢ/ʼˈ;->ʾˋ(JLˊﾞ/ʾˋ;Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ʾˋ()V

    return-void
.end method

.method public final ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 12

    .prologue
    check-cast p1, Lﹳᵢ/ᵔٴ;

    iget-object v0, p1, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, p1, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iget-wide v10, p0, Lﹳᵢ/ˋᵔ;->ᐧﾞ:J

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳᐧ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lﹳᵢ/ˋᵔ;->ـﹶ:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_1
    return-void
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 1

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ʻᵎ;

    return-object v0
.end method

.method public final ᵔᵢ()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ˈⁱ:Z

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ˈʿ:Lﹳᵢ/ᵔי;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ᵔﹳ(II)Lˊﾞ/ٴᵢ;
    .locals 1

    new-instance p2, Lﹳᵢ/ˑٴ;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lﹳᵢ/ˑٴ;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lﹳᵢ/ˋᵔ;->ˈٴ(Lﹳᵢ/ˑٴ;)Lˊﾞ/ٴᵢ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵢˏ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 9

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-interface {v0}, Lˊﾞ/ʾˋ;->ᵔᵢ()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-interface {v0, p1, p2}, Lˊﾞ/ʾˋ;->ˆʾ(J)Lˊﾞ/ᵢˏ;

    move-result-object v0

    iget-object v1, v0, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    iget-wide v5, v1, Lˊﾞ/ᴵˊ;->ﹳٴ:J

    iget-object v0, v0, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    iget-wide v7, v0, Lˊﾞ/ᴵˊ;->ﹳٴ:J

    move-wide v3, p1

    move-object v2, p3

    invoke-virtual/range {v2 .. v8}, Lⁱי/ᴵʼ;->ﹳٴ(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ﹳٴ()V
    .locals 1

    iget-boolean v0, p0, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ﹳᐧ(J)J
    .locals 9

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ﹳٴ()V

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ʿᵢ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Lﹳᵢ/ˋᵔ;->ᵎᵔ:Lˊﾞ/ʾˋ;

    invoke-interface {v1}, Lˊﾞ/ʾˋ;->ᵔᵢ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ʻᵎ:Z

    iget-wide v2, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    cmp-long v2, v2, p1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-wide p1, p0, Lﹳᵢ/ˋᵔ;->ﹶᐧ:J

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ᵢˏ()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-wide p1, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    return-wide p1

    :cond_2
    iget v4, p0, Lﹳᵢ/ˋᵔ;->ˏᵢ:I

    const/4 v5, 0x7

    iget-object v6, p0, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    if-eq v4, v5, :cond_9

    iget-boolean v4, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    if-nez v4, :cond_3

    invoke-virtual {v6}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    iget-object v4, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v4, v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_8

    iget-object v7, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v8, p0, Lﹳᵢ/ˋᵔ;->ʿ:Z

    if-eqz v8, :cond_5

    iget v8, v7, Lﹳᵢ/ᴵˑ;->ᵔﹳ:I

    invoke-virtual {v7, v8}, Lﹳᵢ/ᴵˑ;->ٴᵢ(I)Z

    move-result v7

    goto :goto_3

    :cond_5
    iget-boolean v8, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    invoke-virtual {v7, v8, p1, p2}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    move-result v7

    :goto_3
    if-nez v7, :cond_7

    aget-boolean v7, v0, v5

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lﹳᵢ/ˋᵔ;->ˉـ:Z

    if-nez v7, :cond_7

    :cond_6
    move v3, v1

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ʻˋ:Z

    iput-wide p1, p0, Lﹳᵢ/ˋᵔ;->ﹳﹳ:J

    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    iput-boolean v1, p0, Lﹳᵢ/ˋᵔ;->ˊᵔ:Z

    invoke-virtual {v6}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v2, v0

    :goto_6
    if-ge v1, v2, :cond_a

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v6}, Lᵔⁱ/ˉʿ;->ﹳٴ()V

    return-wide p1

    :cond_b
    const/4 v0, 0x0

    iput-object v0, v6, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v2, v0

    move v3, v1

    :goto_7
    if-ge v3, v2, :cond_c

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 2

    invoke-virtual {p0}, Lﹳᵢ/ˋᵔ;->ˉˆ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ˈٴ()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ˋᵔ;->ˆﾞ:Lˑי/ʽ;

    iget-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ˉˆ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lˊﾞ/ˉˆ;->ﹳٴ()V

    iput-object v2, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    :cond_1
    iput-object v2, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method
