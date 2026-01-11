.class public final Lˑˆ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;
.implements Lﹳᵢ/ʿ;


# instance fields
.field public final ʽʽ:Lᵔⁱ/ˉˆ;

.field public final ʾˋ:Lٴʽ/יـ;

.field public ˆﾞ:[Lᵢˋ/ᵔᵢ;

.field public final ˈٴ:Lⁱᴵ/ﾞʻ;

.field public final ˉٴ:Lᵔⁱ/ˑﹳ;

.field public final ˊʻ:Lʻᴵ/יـ;

.field public final ٴʼ:Lᵔﹶ/ˈٴ;

.field public final ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ᴵˊ:Lـˊ/ᵔﹳ;

.field public final ᴵᵔ:Lⁱᴵ/ʼˎ;

.field public ᵎˊ:Lﹳᵢ/ـˆ;

.field public final ᵎⁱ:Lﹳᵢ/ʻᵎ;

.field public ᵔי:Lˎˉ/ʽ;

.field public ᵔٴ:Lﹳᵢ/ﾞʻ;


# direct methods
.method public constructor <init>(Lˎˉ/ʽ;Lٴʽ/יـ;Lـˊ/ᵔﹳ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lᵔⁱ/ˉˆ;Lᵔⁱ/ˑﹳ;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑˆ/ʽ;->ᵔי:Lˎˉ/ʽ;

    iput-object p2, p0, Lˑˆ/ʽ;->ʾˋ:Lٴʽ/יـ;

    iput-object p3, p0, Lˑˆ/ʽ;->ᴵˊ:Lـˊ/ᵔﹳ;

    iput-object p9, p0, Lˑˆ/ʽ;->ʽʽ:Lᵔⁱ/ˉˆ;

    iput-object p5, p0, Lˑˆ/ʽ;->ˈٴ:Lⁱᴵ/ﾞʻ;

    iput-object p6, p0, Lˑˆ/ʽ;->ᴵᵔ:Lⁱᴵ/ʼˎ;

    iput-object p7, p0, Lˑˆ/ʽ;->ˊʻ:Lʻᴵ/יـ;

    iput-object p8, p0, Lˑˆ/ʽ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p10, p0, Lˑˆ/ʽ;->ˉٴ:Lᵔⁱ/ˑﹳ;

    iput-object p4, p0, Lˑˆ/ʽ;->ٴʼ:Lᵔﹶ/ˈٴ;

    iget-object p3, p1, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    array-length p3, p3

    new-array p3, p3, [Lʽⁱ/ـˏ;

    const/4 p6, 0x0

    move p7, p6

    :goto_0
    iget-object p8, p1, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    array-length p9, p8

    if-ge p7, p9, :cond_3

    aget-object p8, p8, p7

    iget-object p8, p8, Lˎˉ/ⁱˊ;->ˆʾ:[Lʽⁱ/ﹳᐧ;

    array-length p9, p8

    new-array p9, p9, [Lʽⁱ/ﹳᐧ;

    move p10, p6

    :goto_1
    array-length v0, p8

    if-ge p10, v0, :cond_2

    aget-object v0, p8, p10

    invoke-virtual {v0}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v1

    invoke-interface {p5, v0}, Lⁱᴵ/ﾞʻ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v0

    iput v0, v1, Lʽⁱ/ᵔﹳ;->ᵔٴ:I

    new-instance v0, Lʽⁱ/ﹳᐧ;

    invoke-direct {v0, v1}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-boolean v1, p2, Lٴʽ/יـ;->ﹳٴ:Z

    if-eqz v1, :cond_1

    iget-object v1, p2, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v1, v0}, Lˋⁱ/ﾞᴵ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v1

    const-string v2, "application/x-media3-cues"

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v2, p2, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v2, v0}, Lˋⁱ/ﾞᴵ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v2

    iput v2, v1, Lʽⁱ/ᵔﹳ;->ᵎˊ:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Lʽⁱ/ᵔﹳ;->ﹳᐧ:J

    new-instance v0, Lʽⁱ/ﹳᐧ;

    invoke-direct {v0, v1}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    :cond_1
    aput-object v0, p9, p10

    add-int/lit8 p10, p10, 0x1

    goto :goto_1

    :cond_2
    new-instance p8, Lʽⁱ/ـˏ;

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p10

    invoke-direct {p8, p10, p9}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object p8, p3, p7

    add-int/lit8 p7, p7, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lﹳᵢ/ʻᵎ;

    invoke-direct {p1, p3}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    iput-object p1, p0, Lˑˆ/ʽ;->ᵎⁱ:Lﹳᵢ/ʻᵎ;

    new-array p1, p6, [Lᵢˋ/ᵔᵢ;

    iput-object p1, p0, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lﹳᵢ/ﾞʻ;

    sget-object p2, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    invoke-direct {p1, p2, p2}, Lﹳᵢ/ﾞʻ;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 1

    iget-object v0, p0, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0, p1, p2}, Lﹳᵢ/ﾞʻ;->ʻٴ(J)V

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 0

    iput-object p1, p0, Lˑˆ/ʽ;->ᵎˊ:Lﹳᵢ/ـˆ;

    invoke-interface {p1, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    return-void
.end method

.method public final ʼᐧ()V
    .locals 1

    iget-object v0, p0, Lˑˆ/ʽ;->ʽʽ:Lᵔⁱ/ˉˆ;

    invoke-interface {v0}, Lᵔⁱ/ˉˆ;->ʽ()V

    return-void
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 17

    .prologue
    move-object/from16 v5, p0

    move-object/from16 v14, p1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, v14

    if-ge v0, v1, :cond_5

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    check-cast v1, Lᵢˋ/ᵔᵢ;

    aget-object v2, v14, v0

    if-eqz v2, :cond_1

    aget-boolean v3, p2, v0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    check-cast v3, Lˑˆ/ⁱˊ;

    iput-object v2, v3, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lᵢˋ/ᵔᵢ;->ʽʽ(Lـᵢ/ⁱˊ;)V

    aput-object v2, p3, v0

    :cond_2
    :goto_2
    aget-object v1, p3, v0

    if-nez v1, :cond_4

    aget-object v10, v14, v0

    if-eqz v10, :cond_4

    iget-object v1, v5, Lˑˆ/ʽ;->ᵎⁱ:Lﹳᵢ/ʻᵎ;

    invoke-interface {v10}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lﹳᵢ/ʻᵎ;->ⁱˊ(Lʽⁱ/ـˏ;)I

    move-result v9

    iget-object v8, v5, Lˑˆ/ʽ;->ᵔי:Lˎˉ/ʽ;

    iget-object v1, v5, Lˑˆ/ʽ;->ʾˋ:Lٴʽ/יـ;

    iget-object v2, v1, Lٴʽ/יـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lـˊ/ˑﹳ;

    invoke-interface {v2}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object v11

    iget-object v2, v5, Lˑˆ/ʽ;->ᴵˊ:Lـˊ/ᵔﹳ;

    if-eqz v2, :cond_3

    invoke-interface {v11, v2}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    :cond_3
    new-instance v4, Lˑˆ/ⁱˊ;

    iget-object v2, v1, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lˋⁱ/ﾞᴵ;

    iget-boolean v13, v1, Lٴʽ/יـ;->ﹳٴ:Z

    iget-object v7, v5, Lˑˆ/ʽ;->ʽʽ:Lᵔⁱ/ˉˆ;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lˑˆ/ⁱˊ;-><init>(Lᵔⁱ/ˉˆ;Lˎˉ/ʽ;ILﹶʽ/ˏי;Lـˊ/ﾞᴵ;Lˋⁱ/ﾞᴵ;Z)V

    move v1, v0

    new-instance v0, Lᵢˋ/ᵔᵢ;

    iget-object v2, v5, Lˑˆ/ʽ;->ᵔי:Lˎˉ/ʽ;

    iget-object v2, v2, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    aget-object v2, v2, v9

    iget v2, v2, Lˎˉ/ⁱˊ;->ﹳٴ:I

    iget-object v12, v5, Lˑˆ/ʽ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v13, 0x0

    move v3, v1

    move v1, v2

    const/4 v2, 0x0

    move v6, v3

    const/4 v3, 0x0

    move v7, v6

    iget-object v6, v5, Lˑˆ/ʽ;->ˉٴ:Lᵔⁱ/ˑﹳ;

    iget-object v9, v5, Lˑˆ/ʽ;->ˈٴ:Lⁱᴵ/ﾞʻ;

    iget-object v10, v5, Lˑˆ/ʽ;->ᴵᵔ:Lⁱᴵ/ʼˎ;

    iget-object v11, v5, Lˑˆ/ʽ;->ˊʻ:Lʻᴵ/יـ;

    move/from16 v16, v7

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v13}, Lᵢˋ/ᵔᵢ;-><init>(I[I[Lʽⁱ/ﹳᐧ;Lᵢˋ/ʼˎ;Lﹳᵢ/ʿ;Lᵔⁱ/ˑﹳ;JLⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Z)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v0, p3, v16

    const/4 v0, 0x1

    aput-boolean v0, p4, v16

    goto :goto_3

    :cond_4
    move/from16 v16, v0

    :goto_3
    add-int/lit8 v0, v16, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lᵢˋ/ᵔᵢ;

    iput-object v0, v5, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lˑʿ/ˏי;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˑʿ/ˏי;-><init>(I)V

    invoke-static {v15, v0}, Lʼʻ/ﹳᐧ;->ʽﹳ(Ljava/util/List;Lˆʽ/ˑﹳ;)Ljava/util/AbstractList;

    move-result-object v0

    iget-object v1, v5, Lˑˆ/ʽ;->ٴʼ:Lᵔﹶ/ˈٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳᵢ/ﾞʻ;

    invoke-direct {v1, v15, v0}, Lﹳᵢ/ﾞʻ;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v1, v5, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    return-wide p5
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0}, Lﹳᵢ/ﾞʻ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˉʿ()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 2

    iget-object v0, p0, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0}, Lﹳᵢ/ﾞʻ;->ˉˆ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˏי(J)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lᵢˋ/ᵔᵢ;->ˏי(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 1

    iget-object v0, p0, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0, p1}, Lﹳᵢ/ﾞʻ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result p1

    return p1
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 1

    iget-object v0, p0, Lˑˆ/ʽ;->ᵎⁱ:Lﹳᵢ/ʻᵎ;

    return-object v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 6

    .prologue
    iget-object v0, p0, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v0, v3, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    invoke-interface {v0, p1, p2, p3}, Lᵢˋ/ʼˎ;->ⁱˊ(JLⁱי/ᴵʼ;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final ﹳᐧ(J)J
    .locals 4

    .prologue
    iget-object v0, p0, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lᵢˋ/ᵔᵢ;->ˈٴ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 2

    iget-object v0, p0, Lˑˆ/ʽ;->ᵔٴ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0}, Lﹳᵢ/ﾞʻ;->ﾞʻ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﾞᴵ(Lﹳᵢ/ʿᵢ;)V
    .locals 0

    iget-object p1, p0, Lˑˆ/ʽ;->ᵎˊ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method
