.class public final Lᵢˋ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ˉـ;
.implements Lﹳᵢ/ʿᵢ;
.implements Lᵔⁱ/ʼˎ;
.implements Lᵔⁱ/ﾞʻ;


# instance fields
.field public ʼˈ:J

.field public final ʽʽ:[Lʽⁱ/ﹳᐧ;

.field public final ʾˋ:I

.field public ʿ:Z

.field public final ˆﾞ:Lﹳᵢ/ᴵˑ;

.field public final ˈʿ:Lـʾ/ᵔﹳ;

.field public final ˈٴ:[Z

.field public ˈⁱ:Lᵢˋ/ﹳٴ;

.field public ˉـ:Z

.field public final ˉٴ:Lʻᴵ/יـ;

.field public final ˊʻ:Ljava/lang/Object;

.field public ˊˋ:Lᵢˋ/ᵎﹶ;

.field public ˋᵔ:Lʽⁱ/ﹳᐧ;

.field public ˑٴ:Lᵢˋ/ˑﹳ;

.field public ـˏ:J

.field public final ٴʼ:Lar/tvplayer/core/domain/ʽﹳ;

.field public final ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ᴵˊ:[I

.field public ᴵˑ:Z

.field public final ᴵᵔ:Lᵢˋ/ʼˎ;

.field public final ᵎˊ:Ljava/util/ArrayList;

.field public final ᵎⁱ:Lᵔⁱ/ˉʿ;

.field public final ᵔי:Ljava/util/List;

.field public final ᵔٴ:[Lﹳᵢ/ᴵˑ;

.field public ﹳـ:I


# direct methods
.method public constructor <init>(I[I[Lʽⁱ/ﹳᐧ;Lᵢˋ/ʼˎ;Lﹳᵢ/ʿ;Lᵔⁱ/ˑﹳ;JLⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Z)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    :cond_0
    iput-object p2, p0, Lᵢˋ/ᵔᵢ;->ᴵˊ:[I

    if-nez p3, :cond_1

    new-array p3, v0, [Lʽⁱ/ﹳᐧ;

    :cond_1
    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ʽʽ:[Lʽⁱ/ﹳᐧ;

    iput-object p4, p0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    iput-object p5, p0, Lᵢˋ/ᵔᵢ;->ˊʻ:Ljava/lang/Object;

    iput-object p12, p0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p11, p0, Lᵢˋ/ᵔᵢ;->ˉٴ:Lʻᴵ/יـ;

    iput-boolean p13, p0, Lᵢˋ/ᵔᵢ;->ᴵˑ:Z

    new-instance p3, Lᵔⁱ/ˉʿ;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    new-instance p3, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ٴʼ:Lar/tvplayer/core/domain/ʽﹳ;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ᵔי:Ljava/util/List;

    array-length p2, p2

    new-array p3, p2, [Lﹳᵢ/ᴵˑ;

    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    new-array p3, p2, [Z

    iput-object p3, p0, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    add-int/lit8 p3, p2, 0x1

    new-array p4, p3, [I

    new-array p3, p3, [Lﹳᵢ/ᴵˑ;

    new-instance p5, Lﹳᵢ/ᴵˑ;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p5, p6, p9, p10}, Lﹳᵢ/ᴵˑ;-><init>(Lᵔⁱ/ˑﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;)V

    iput-object p5, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    aput p1, p4, v0

    aput-object p5, p3, v0

    :goto_0
    if-ge v0, p2, :cond_2

    new-instance p1, Lﹳᵢ/ᴵˑ;

    const/4 p5, 0x0

    invoke-direct {p1, p6, p5, p5}, Lﹳᵢ/ᴵˑ;-><init>(Lᵔⁱ/ˑﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;)V

    iget-object p5, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    aput-object p1, p3, p5

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ᴵˊ:[I

    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_0

    :cond_2
    new-instance p1, Lـʾ/ᵔﹳ;

    const/16 p2, 0xd

    invoke-direct {p1, p4, p2, p3}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p1, p0, Lᵢˋ/ᵔᵢ;->ˈʿ:Lـʾ/ᵔﹳ;

    iput-wide p7, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    iput-wide p7, p0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 11

    .prologue
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v1

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ᵔי:Ljava/util/List;

    iget-object v3, p0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    iget-object v4, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ˑٴ:Lᵢˋ/ˑﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v1, Lᵢˋ/ﹳٴ;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lᵢˋ/ᵔᵢ;->ʾᵎ(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3, p1, p2, v1, v2}, Lᵢˋ/ʼˎ;->ᵎﹶ(JLᵢˋ/ˑﹳ;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ﹳٴ()V

    if-eqz v5, :cond_7

    check-cast v1, Lᵢˋ/ﹳٴ;

    iput-object v1, p0, Lᵢˋ/ᵔᵢ;->ˈⁱ:Lᵢˋ/ﹳٴ;

    return-void

    :cond_2
    invoke-interface {v3, p1, p2, v2}, Lᵢˋ/ʼˎ;->ﾞᴵ(JLjava/util/List;)I

    move-result p1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-ge p1, p2, :cond_4

    invoke-virtual {p0, p1}, Lᵢˋ/ᵔᵢ;->ʾᵎ(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_1
    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->יـ()Lᵢˋ/ﹳٴ;

    move-result-object p2

    iget-wide v9, p2, Lᵢˋ/ˑﹳ;->ˉٴ:J

    invoke-virtual {p0, p1}, Lᵢˋ/ᵔᵢ;->ˑﹳ(I)Lᵢˋ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-wide v0, p0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    iput-wide v0, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    :cond_6
    const/4 p2, 0x0

    iput-boolean p2, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    iget v6, p0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    iget-wide v7, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-object v5, p0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˊʻ(IJJ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 12

    check-cast p1, Lᵢˋ/ˑﹳ;

    const/4 v0, 0x0

    iput-object v0, p0, Lᵢˋ/ᵔᵢ;->ˑٴ:Lᵢˋ/ˑﹳ;

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    invoke-interface {v0, p1}, Lᵢˋ/ʼˎ;->ᵔᵢ(Lᵢˋ/ˑﹳ;)V

    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵢˋ/ˑﹳ;->ʾˋ:J

    iget-object v0, p1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˉٴ:Lʻᴵ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iget-object v5, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v6, p1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v7, p1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v8, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, p0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˏי(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ˊʻ:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method

.method public final ʽ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ʽ()V

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v1}, Lﹳᵢ/ᴵˑ;->ᵢˏ()V

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    invoke-interface {v0}, Lᵢˋ/ʼˎ;->ʽ()V

    :cond_0
    return-void
.end method

.method public final ʽʽ(Lـᵢ/ⁱˊ;)V
    .locals 6

    .prologue
    iput-object p1, p0, Lᵢˋ/ᵔᵢ;->ˊˋ:Lᵢˋ/ᵎﹶ;

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {p1}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    iget-object v0, p1, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lﹳᵢ/ᴵˑ;->ˑﹳ:Lⁱᴵ/ʼˎ;

    invoke-interface {v0, v2}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    iput-object v1, p1, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    iput-object v1, p1, Lﹳᵢ/ᴵˑ;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    :cond_0
    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    iget-object v4, v3, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    if-eqz v4, :cond_1

    iget-object v5, v3, Lﹳᵢ/ᴵˑ;->ˑﹳ:Lⁱᴵ/ʼˎ;

    invoke-interface {v4, v5}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    iput-object v1, v3, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    iput-object v1, v3, Lﹳᵢ/ᴵˑ;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {p1, p0}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    return-void
.end method

.method public final ʽﹳ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 13

    .prologue
    check-cast p1, Lᵢˋ/ˑﹳ;

    if-nez p6, :cond_0

    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵢˋ/ˑﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-direct {v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(Lـˊ/ᵔᵢ;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵢˋ/ˑﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    goto :goto_0

    :goto_1
    iget v3, p1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iget-object v5, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v6, p1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v7, p1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v8, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, p0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    move/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final ʾˋ()V
    .locals 9

    .prologue
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v0}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v0

    iget v1, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lᵢˋ/ᵔᵢ;->ᴵˊ(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵢˋ/ﹳٴ;

    iget-object v4, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ˋᵔ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v4, v2}, Lʽⁱ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v5, v1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v6, v1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v7, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v3, p0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ٴﹶ(ILʽⁱ/ﹳᐧ;ILjava/lang/Object;J)V

    :cond_0
    iput-object v4, p0, Lᵢˋ/ᵔᵢ;->ˋᵔ:Lʽⁱ/ﹳᐧ;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ʾᵎ(I)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵢˋ/ﹳٴ;

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v0}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˈٴ(J)V
    .locals 10

    .prologue
    iput-wide p1, p0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ᴵˑ:Z

    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-wide p1, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    return-void

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵢˋ/ﹳٴ;

    iget-wide v5, v3, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    iget-wide v6, v3, Lᵢˋ/ﹳٴ;->ᵎˊ:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v3, v4

    :goto_2
    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lﹳᵢ/ᴵˑ;->ٴᵢ(I)Z

    move-result v3

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ﾞʻ()J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_6

    cmp-long v3, p1, v6

    if-gez v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v0

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v5

    :goto_4
    invoke-virtual {v1, v3, p1, p2}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    move-result v3

    :goto_5
    iget-object v6, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lᵢˋ/ᵔᵢ;->ᴵˊ(II)I

    move-result v1

    iput v1, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    array-length v1, v6

    :goto_6
    if-ge v0, v1, :cond_a

    aget-object v2, v6, v0

    invoke-virtual {v2, v5, p1, p2}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iput-wide p1, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    iput-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v1}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    array-length p2, v6

    :goto_7
    if-ge v0, p2, :cond_8

    aget-object v1, v6, v0

    invoke-virtual {v1}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ﹳٴ()V

    return-void

    :cond_9
    iput-object v4, p1, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    invoke-virtual {v1, v0}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    array-length p1, v6

    move p2, v0

    :goto_8
    if-ge p2, p1, :cond_a

    aget-object v1, v6, p2

    invoke-virtual {v1, v0}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method public final ˉˆ()J
    .locals 5

    .prologue
    iget-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->יـ()Lᵢˋ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Lᵢˋ/ﾞʻ;->ⁱˊ()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵢˋ/ﹳٴ;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lᵢˋ/ˑﹳ;->ˉٴ:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ᵔﹳ()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˏי(J)V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    iget v1, v0, Lﹳᵢ/ᴵˑ;->ᵔﹳ:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Lﹳᵢ/ᴵˑ;->ˆʾ(ZJ)V

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    iget p2, p1, Lﹳᵢ/ᴵˑ;->ᵔﹳ:I

    const/4 v0, 0x0

    if-le p2, v1, :cond_2

    monitor-enter p1

    :try_start_0
    iget v1, p1, Lﹳᵢ/ᴵˑ;->ʼᐧ:I

    if-nez v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lﹳᵢ/ᴵˑ;->ᵔʾ:[J

    iget v2, p1, Lﹳᵢ/ᴵˑ;->ﹳᐧ:I

    aget-wide v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v2

    :goto_0
    monitor-exit p1

    move p1, v0

    :goto_1
    iget-object v3, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    aget-object v3, v3, p1

    iget-object v4, p0, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4, v1, v2}, Lﹳᵢ/ᴵˑ;->ˆʾ(ZJ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    invoke-virtual {p0, p2, v0}, Lᵢˋ/ᵔᵢ;->ᴵˊ(II)I

    move-result p1

    iget p2, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p2, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-static {p2, v0, p1}, Lᐧˎ/ʼʼ;->ˉـ(Ljava/util/ArrayList;II)V

    iget p2, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    sub-int/2addr p2, p1

    iput p2, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    :cond_3
    :goto_2
    return-void
.end method

.method public final ˑﹳ(I)Lᵢˋ/ﹳٴ;
    .locals 3

    .prologue
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵢˋ/ﹳٴ;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, p1, v2}, Lᐧˎ/ʼʼ;->ˉـ(Ljava/util/ArrayList;II)V

    iget p1, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lᵢˋ/ᵔᵢ;->ﹳـ:I

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v0

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v2, v0}, Lﹳᵢ/ᴵˑ;->ᵔʾ(I)V

    :goto_0
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v2, v0

    if-ge p1, v2, :cond_0

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lﹳᵢ/ᴵˑ;->ᵔʾ(I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final יـ()Lᵢˋ/ﹳٴ;
    .locals 2

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵢˋ/ﹳٴ;

    return-object v0
.end method

.method public final ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 21

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lᵢˋ/ˑﹳ;

    iget-object v2, v1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-wide v2, v2, Lـˊ/ʼᐧ;->ᴵˊ:J

    instance-of v4, v1, Lᵢˋ/ﹳٴ;

    iget-object v5, v0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v0, v6}, Lᵢˋ/ᵔᵢ;->ʾᵎ(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v7

    :goto_1
    new-instance v9, Lﹳᵢ/ﹳᐧ;

    iget-object v8, v1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v8, v8, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v10, p4

    invoke-direct {v9, v10, v11}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-wide v10, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    invoke-static {v10, v11}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    iget-wide v10, v1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    invoke-static {v10, v11}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    new-instance v8, Lʼٴ/ʾᵎ;

    const/16 v10, 0xb

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct {v8, v12, v10, v11}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object v10, v0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    iget-object v12, v0, Lᵢˋ/ᵔᵢ;->ˉٴ:Lʻᴵ/יـ;

    invoke-interface {v10, v1, v2, v8, v12}, Lᵢˋ/ʼˎ;->ˈ(Lᵢˋ/ˑﹳ;ZLʼٴ/ʾᵎ;Lʻᴵ/יـ;)Z

    move-result v10

    const/4 v13, 0x0

    if-eqz v10, :cond_5

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v6}, Lᵢˋ/ᵔᵢ;->ˑﹳ(I)Lᵢˋ/ﹳٴ;

    move-result-object v2

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v4, v0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    iput-wide v4, v0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    :cond_3
    sget-object v2, Lᵔⁱ/ˉʿ;->ᴵᵔ:Lʼˊ/ⁱˊ;

    goto :goto_3

    :cond_4
    const-string v2, "ChunkSampleStream"

    const-string v4, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v2, v4}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v2, v13

    :goto_3
    if-nez v2, :cond_7

    invoke-virtual {v12, v8}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    new-instance v2, Lʼˊ/ⁱˊ;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v3}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    goto :goto_4

    :cond_6
    sget-object v2, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    :cond_7
    :goto_4
    invoke-virtual {v2}, Lʼˊ/ⁱˊ;->ﹳٴ()Z

    move-result v3

    xor-int/lit8 v20, v3, 0x1

    iget v10, v1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    move-object v4, v12

    iget-object v12, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    move-object v5, v13

    iget v13, v1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v14, v1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v6, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    move-wide v15, v6

    iget-wide v5, v1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v8, v0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v11, v0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    move-object/from16 v19, p6

    move-wide/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽﹳ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v3, :cond_8

    iput-object v5, v0, Lᵢˋ/ᵔᵢ;->ˑٴ:Lᵢˋ/ˑﹳ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lᵢˋ/ᵔᵢ;->ˊʻ:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_8
    return-object v2
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 13

    .prologue
    iget-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-wide v4, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    :goto_0
    move-object v10, v3

    move-wide v8, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->יـ()Lᵢˋ/ﹳٴ;

    move-result-object v3

    iget-wide v4, v3, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v3, p0, Lᵢˋ/ᵔᵢ;->ᵔי:Ljava/util/List;

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    iget-object v11, p0, Lᵢˋ/ᵔᵢ;->ٴʼ:Lar/tvplayer/core/domain/ʽﹳ;

    move-object v7, p1

    invoke-interface/range {v6 .. v11}, Lᵢˋ/ʼˎ;->ˑﹳ(Lⁱי/ˉٴ;JLjava/util/List;Lar/tvplayer/core/domain/ʽﹳ;)V

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ٴʼ:Lar/tvplayer/core/domain/ʽﹳ;

    iget-boolean v3, p1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    iget-object v4, p1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lᵢˋ/ˑﹳ;

    const/4 v5, 0x0

    iput-object v5, p1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    iput-boolean v1, p1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    if-eqz v3, :cond_2

    iput-wide v5, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    iput-boolean p1, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    return p1

    :cond_2
    if-nez v4, :cond_3

    goto/16 :goto_5

    :cond_3
    iput-object v4, p0, Lᵢˋ/ᵔᵢ;->ˑٴ:Lᵢˋ/ˑﹳ;

    instance-of v3, v4, Lᵢˋ/ﹳٴ;

    iget-object v7, p0, Lᵢˋ/ᵔᵢ;->ˈʿ:Lـʾ/ᵔﹳ;

    if-eqz v3, :cond_8

    move-object v3, v4

    check-cast v3, Lᵢˋ/ﹳٴ;

    if-eqz v2, :cond_6

    iget-wide v8, v3, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_5

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    iput-wide v10, v2, Lﹳᵢ/ᴵˑ;->ˏי:J

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v8, v2

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v2, v9

    iget-wide v11, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    iput-wide v11, v10, Lﹳᵢ/ᴵˑ;->ˏי:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lᵢˋ/ᵔᵢ;->ᴵˑ:Z

    if-eqz v2, :cond_5

    iget-object v2, v3, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v8, v2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v2, v2, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v8, v2}, Lʽⁱ/ˉٴ;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, p1

    iput-boolean v2, p0, Lᵢˋ/ᵔᵢ;->ˉـ:Z

    :cond_5
    iput-boolean v1, p0, Lᵢˋ/ᵔᵢ;->ᴵˑ:Z

    iput-wide v5, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    :cond_6
    iput-object v7, v3, Lᵢˋ/ﹳٴ;->ˆﾞ:Lـʾ/ᵔﹳ;

    iget-object v2, v7, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, [Lﹳᵢ/ᴵˑ;

    array-length v5, v2

    new-array v5, v5, [I

    :goto_3
    array-length v6, v2

    if-ge v1, v6, :cond_7

    aget-object v6, v2, v1

    iget v7, v6, Lﹳᵢ/ᴵˑ;->ᵔﹳ:I

    iget v6, v6, Lﹳᵢ/ᴵˑ;->ʼᐧ:I

    add-int/2addr v7, v6

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iput-object v5, v3, Lᵢˋ/ﹳٴ;->ᵔٴ:[I

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    instance-of v1, v4, Lᵢˋ/ٴﹶ;

    if-eqz v1, :cond_9

    move-object v1, v4

    check-cast v1, Lᵢˋ/ٴﹶ;

    iput-object v7, v1, Lᵢˋ/ٴﹶ;->ᵎˊ:Lـʾ/ᵔﹳ;

    :cond_9
    :goto_4
    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ˉٴ:Lʻᴵ/יـ;

    iget v2, v4, Lᵢˋ/ˑﹳ;->ʽʽ:I

    invoke-virtual {v1, v2}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v1

    invoke-virtual {v0, v4, p0, v1}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    return p1

    :cond_a
    :goto_5
    return v1
.end method

.method public final ᴵˊ(II)I
    .locals 2

    .prologue
    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵢˋ/ﹳٴ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 12

    .prologue
    check-cast p1, Lᵢˋ/ˑﹳ;

    const/4 v0, 0x0

    iput-object v0, p0, Lᵢˋ/ᵔᵢ;->ˑٴ:Lᵢˋ/ˑﹳ;

    iput-object v0, p0, Lᵢˋ/ᵔᵢ;->ˈⁱ:Lᵢˋ/ﹳٴ;

    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵢˋ/ˑﹳ;->ʾˋ:J

    iget-object v0, p1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˉٴ:Lʻᴵ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iget-object v5, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v6, p1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v7, p1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v8, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, p0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳᐧ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lᵢˋ/ﹳٴ;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lᵢˋ/ᵔᵢ;->ˑﹳ(I)Lᵢˋ/ﹳٴ;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    iput-wide v0, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    :cond_1
    iget-object p1, p0, Lᵢˋ/ᵔᵢ;->ˊʻ:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_2
    return-void
.end method

.method public final ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˈⁱ:Lᵢˋ/ﹳٴ;

    iget-object v1, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v0

    invoke-virtual {v1}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v2

    if-gt v0, v2, :cond_1

    :goto_0
    const/4 p1, -0x3

    return p1

    :cond_1
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ʾˋ()V

    iget-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    invoke-virtual {v1, p1, p2, p3, v0}, Lﹳᵢ/ᴵˑ;->ʽʽ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;IZ)I

    move-result p1

    return p1
.end method

.method public final ᵔﹳ(J)I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    iget-object v2, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v2, v0, p1, p2}, Lﹳᵢ/ᴵˑ;->ʻٴ(ZJ)I

    move-result p1

    iget-object p2, p0, Lᵢˋ/ᵔᵢ;->ˈⁱ:Lᵢˋ/ﹳٴ;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result p2

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    invoke-virtual {v2, p1}, Lﹳᵢ/ᴵˑ;->ᵎⁱ(I)V

    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ʾˋ()V

    return p1
.end method

.method public final ᵢˏ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    iget-boolean v1, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    invoke-virtual {v0, v1}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞʻ()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lᵢˋ/ᵔᵢ;->ʼˈ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lᵢˋ/ᵔᵢ;->יـ()Lᵢˋ/ﹳٴ;

    move-result-object v0

    iget-wide v0, v0, Lᵢˋ/ˑﹳ;->ˉٴ:J

    return-wide v0
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v0}, Lﹳᵢ/ᴵˑ;->ˈٴ()V

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ˈٴ()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    invoke-interface {v0}, Lᵢˋ/ʼˎ;->ﹳٴ()V

    iget-object v0, p0, Lᵢˋ/ᵔᵢ;->ˊˋ:Lᵢˋ/ᵎﹶ;

    if-eqz v0, :cond_2

    check-cast v0, Lـᵢ/ⁱˊ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lـᵢ/ⁱˊ;->ᵔٴ:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lـᵢ/ᵔʾ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v1}, Lﹳᵢ/ᴵˑ;->ˈٴ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
