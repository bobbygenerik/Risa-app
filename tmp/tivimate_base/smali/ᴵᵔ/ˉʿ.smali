.class public final Lᴵᵔ/ˉʿ;
.super Lᴵᵔ/ﾞᴵ;
.source "SourceFile"

# interfaces
.implements Lᴵᵔ/ﹳٴ;


# static fields
.field public static final ᴵˑ:Lᴵᵔ/ʼˎ;


# instance fields
.field public ʼˈ:Lᴵᵔ/ﾞʻ;

.field public ˆﾞ:Lᴵᵔ/ʼᐧ;

.field public ˈʿ:J

.field public ˈٴ:Ljava/util/ArrayList;

.field public ˈⁱ:Lᴵᵔ/ᵎﹶ;

.field public ˉٴ:Z

.field public ˊʻ:Ljava/util/ArrayList;

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public ˑٴ:I

.field public ـˏ:Z

.field public ٴʼ:Lᴵᵔ/ـˆ;

.field public ٴᵢ:Ljava/util/ArrayList;

.field public ᴵᵔ:Lיـ/ﹳᐧ;

.field public ᵎˊ:Lᴵᵔ/ٴﹶ;

.field public ᵎⁱ:Z

.field public ᵔי:J

.field public ᵔٴ:J

.field public ﹳـ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵᵔ/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵᵔ/ˉʿ;->ᴵˑ:Lᴵᵔ/ʼˎ;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    invoke-direct {p0}, Lᴵᵔ/ﾞᴵ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    new-instance v0, Lיـ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˉٴ:Z

    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lᴵᵔ/ـˆ;->ʽʽ([F)Lᴵᵔ/ـˆ;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lᴵᵔ/ـˆ;->ᴵᵔ(J)Lᴵᵔ/ـˆ;

    iput-object v0, p0, Lᴵᵔ/ˉʿ;->ٴʼ:Lᴵᵔ/ـˆ;

    new-instance v4, Lᴵᵔ/ٴﹶ;

    invoke-direct {v4, v0}, Lᴵᵔ/ٴﹶ;-><init>(Lᴵᵔ/ﾞᴵ;)V

    iput-object v4, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lᴵᵔ/ˉʿ;->ᵔי:J

    const/4 v7, 0x0

    iput-object v7, p0, Lᴵᵔ/ˉʿ;->ˆﾞ:Lᴵᵔ/ʼᐧ;

    iput-wide v2, p0, Lᴵᵔ/ˉʿ;->ᵔٴ:J

    iput-wide v5, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    const/4 v2, -0x1

    iput v2, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    new-instance v2, Lᴵᵔ/ﾞʻ;

    invoke-direct {v2, p0}, Lᴵᵔ/ﾞʻ;-><init>(Lᴵᵔ/ˉʿ;)V

    iput-object v2, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ـˏ:Z

    iput-wide v5, p0, Lᴵᵔ/ˉʿ;->ﹳـ:J

    new-instance v2, Lᴵᵔ/ᵔᵢ;

    invoke-direct {v2, p0, v1}, Lᴵᵔ/ᵔᵢ;-><init>(Lᴵᵔ/ˉʿ;I)V

    iput-object v2, p0, Lᴵᵔ/ˉʿ;->ˈⁱ:Lᴵᵔ/ᵎﹶ;

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v1, v0, v4}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static ʼʼ(Lᴵᵔ/ٴﹶ;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ٴﹶ;

    invoke-static {v1, p1}, Lᴵᵔ/ˉʿ;->ʼʼ(Lᴵᵔ/ٴﹶ;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static ٴᵢ(JLᴵᵔ/ٴﹶ;)V
    .locals 1

    .prologue
    iget-boolean v0, p2, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    long-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lᴵᵔ/ﾞᴵ;->ﾞʻ(J)Z

    move-result p0

    iput-boolean p0, p2, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    :cond_0
    return-void
.end method

.method public static ᴵᵔ(Lᴵᵔ/ˉʿ;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ᵢˏ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ᵢˏ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵᵔ/ﾞᴵ;

    instance-of v3, v2, Lᴵᵔ/ˉʿ;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lᴵᵔ/ˉʿ;

    invoke-static {v2}, Lᴵᵔ/ˉʿ;->ᴵᵔ(Lᴵᵔ/ˉʿ;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ˈ;

    invoke-interface {v4}, Lᴵᵔ/ˈ;->ﹳٴ()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ٴﹶ;

    iget-object v3, v3, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ـˆ()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʽﹳ()Lᴵᵔ/ˉʿ;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimatorSet@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ٴﹶ;

    const-string v4, "\n    "

    invoke-static {v0, v4}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v3, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n}"

    invoke-static {v0, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʻٴ()V
    .locals 12

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˉٴ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵᵔ/ٴﹶ;

    iget-object v2, v2, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ٴﹶ;

    iget-wide v3, v3, Lᴵᵔ/ٴﹶ;->ٴʼ:J

    invoke-virtual {v2}, Lᴵᵔ/ﾞᴵ;->ʼˎ()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˉٴ:Z

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ٴﹶ;

    iput-boolean v1, v3, Lᴵᵔ/ٴﹶ;->ٴᵢ:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_c

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-boolean v5, v4, Lᴵᵔ/ٴﹶ;->ٴᵢ:Z

    if-eqz v5, :cond_4

    goto/16 :goto_a

    :cond_4
    iput-boolean v3, v4, Lᴵᵔ/ٴﹶ;->ٴᵢ:Z

    iget-object v5, v4, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    goto :goto_a

    :cond_5
    invoke-static {v4, v5}, Lᴵᵔ/ˉʿ;->ʼʼ(Lᴵᵔ/ٴﹶ;Ljava/util/ArrayList;)V

    iget-object v5, v4, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v4, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_8

    iget-object v7, v4, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᴵᵔ/ٴﹶ;

    iget-object v7, v7, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v1

    :goto_5
    if-ge v9, v8, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v4, v10}, Lᴵᵔ/ٴﹶ;->ﹳٴ(Lᴵᵔ/ٴﹶ;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move v6, v1

    :goto_7
    if-ge v6, v5, :cond_b

    iget-object v7, v4, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᴵᵔ/ٴﹶ;

    iget-object v8, v4, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v1

    :goto_8
    if-ge v10, v9, :cond_a

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v7, v11}, Lᴵᵔ/ٴﹶ;->ﹳٴ(Lᴵᵔ/ٴﹶ;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    iput-boolean v3, v7, Lᴵᵔ/ٴﹶ;->ٴᵢ:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_e

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    if-eq v4, v5, :cond_d

    iget-object v6, v4, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v6, :cond_d

    invoke-virtual {v4, v5}, Lᴵᵔ/ٴﹶ;->ﹳٴ(Lᴵᵔ/ٴﹶ;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴʼ:Lᴵᵔ/ـˆ;

    iget-wide v4, v4, Lᴵᵔ/ـˆ;->ᵔٴ:J

    iput-wide v4, v2, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    invoke-virtual {p0, v2, v0}, Lᴵᵔ/ˉʿ;->ٴʼ(Lᴵᵔ/ٴﹶ;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v3

    :goto_c
    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵᵔ/ٴﹶ;

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v6, Lᴵᵔ/ˆʾ;

    invoke-direct {v6, v2, v1}, Lᴵᵔ/ˆʾ;-><init>(Lᴵᵔ/ٴﹶ;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v6, Lᴵᵔ/ˆʾ;

    invoke-direct {v6, v2, v3}, Lᴵᵔ/ˆʾ;-><init>(Lᴵᵔ/ٴﹶ;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v6, Lᴵᵔ/ˆʾ;

    invoke-direct {v6, v2, v4}, Lᴵᵔ/ˆʾ;-><init>(Lᴵᵔ/ٴﹶ;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    sget-object v2, Lᴵᵔ/ˉʿ;->ᴵˑ:Lᴵᵔ/ʼˎ;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1a

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵᵔ/ˆʾ;

    iget v6, v5, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    iget-object v5, v5, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    if-ne v6, v4, :cond_19

    iget-wide v6, v5, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    iget-wide v8, v5, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_10

    move v6, v3

    goto :goto_e

    :cond_10
    iget-object v10, v5, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v6, v8, v6

    if-nez v6, :cond_19

    move v6, v1

    :goto_e
    add-int/lit8 v7, v2, 0x1

    move v9, v0

    move v10, v9

    move v8, v7

    :goto_f
    if-ge v8, v0, :cond_14

    if-ge v9, v0, :cond_11

    if-ge v10, v0, :cond_11

    goto :goto_11

    :cond_11
    iget-object v11, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ˆʾ;

    iget-object v11, v11, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    if-ne v11, v5, :cond_13

    iget-object v11, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ˆʾ;

    iget v11, v11, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-nez v11, :cond_12

    move v9, v8

    goto :goto_10

    :cond_12
    iget-object v11, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ˆʾ;

    iget v11, v11, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-ne v11, v3, :cond_13

    move v10, v8

    :cond_13
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_14
    :goto_11
    if-eqz v6, :cond_16

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v9, v5, :cond_15

    goto :goto_12

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_12
    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v10, v5, :cond_18

    if-eqz v6, :cond_17

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵᵔ/ˆʾ;

    iget-object v6, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v7

    :cond_17
    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵᵔ/ˆʾ;

    iget-object v6, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v2, v4

    goto/16 :goto_d

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_1a
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget v0, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-nez v0, :cond_1b

    goto :goto_13

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_13
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v2, Lᴵᵔ/ˆʾ;

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    invoke-direct {v2, v5, v1}, Lᴵᵔ/ˆʾ;-><init>(Lᴵᵔ/ٴﹶ;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v1, Lᴵᵔ/ˆʾ;

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    invoke-direct {v1, v2, v3}, Lᴵᵔ/ˆʾ;-><init>(Lᴵᵔ/ٴﹶ;I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v1, Lᴵᵔ/ˆʾ;

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    invoke-direct {v1, v2, v4}, Lᴵᵔ/ˆʾ;-><init>(Lᴵᵔ/ٴﹶ;I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget v0, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget v0, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    invoke-virtual {v0}, Lᴵᵔ/ˆʾ;->ﹳٴ()J

    move-result-wide v0

    iput-wide v0, p0, Lᴵᵔ/ˉʿ;->ᵔٴ:J

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Something went wrong, the last event is not an end event"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʼˎ()J
    .locals 2

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ᵎⁱ()V

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʻٴ()V

    iget-wide v0, p0, Lᴵᵔ/ˉʿ;->ᵔٴ:J

    return-wide v0
.end method

.method public final ʼᐧ(Lᴵᵔ/ʼᐧ;)V
    .locals 0

    iput-object p1, p0, Lᴵᵔ/ˉʿ;->ˆﾞ:Lᴵᵔ/ʼᐧ;

    return-void
.end method

.method public final ʽʽ(IJI)V
    .locals 9

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    sub-int/2addr p1, v5

    :goto_0
    if-lt p1, p4, :cond_8

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget-object v6, v0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget v7, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-ne v7, v3, :cond_2

    iget-object v7, v6, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v7}, Lᴵᵔ/ﾞᴵ;->ٴﹶ()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v7}, Lᴵᵔ/ﾞᴵ;->cancel()V

    :cond_1
    iput-boolean v4, v6, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    iget-object v7, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    iget-object v0, v0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v0, v5}, Lᴵᵔ/ﾞᴵ;->ˏי(Z)V

    invoke-static {v1, v2, v6}, Lᴵᵔ/ˉʿ;->ٴᵢ(JLᴵᵔ/ٴﹶ;)V

    goto :goto_1

    :cond_2
    if-ne v7, v5, :cond_3

    iget-boolean v0, v6, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p3, v6}, Lᴵᵔ/ˉʿ;->ᴵˊ(JLᴵᵔ/ٴﹶ;)J

    move-result-wide v7

    invoke-static {v7, v8, v6}, Lᴵᵔ/ˉʿ;->ٴᵢ(JLᴵᵔ/ٴﹶ;)V

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    add-int/2addr p1, v5

    :goto_2
    if-gt p1, p4, :cond_8

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget-object v5, v0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget v0, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v0}, Lᴵᵔ/ﾞᴵ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v0}, Lᴵᵔ/ﾞᴵ;->cancel()V

    :cond_5
    iput-boolean v4, v5, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    iget-object v0, v5, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v0, v4}, Lᴵᵔ/ﾞᴵ;->ˏי(Z)V

    invoke-static {v1, v2, v5}, Lᴵᵔ/ˉʿ;->ٴᵢ(JLᴵᵔ/ٴﹶ;)V

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    iget-boolean v0, v5, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p2, p3, v5}, Lᴵᵔ/ˉʿ;->ᴵˊ(JLᴵᵔ/ٴﹶ;)J

    move-result-wide v6

    invoke-static {v6, v7, v5}, Lᴵᵔ/ˉʿ;->ٴᵢ(JLᴵᵔ/ٴﹶ;)V

    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public final ʽﹳ()Lᴵᵔ/ˉʿ;
    .locals 12

    .prologue
    invoke-super {p0}, Lᴵᵔ/ﾞᴵ;->ﾞᴵ()Lᴵᵔ/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˉʿ;

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    const/4 v5, -0x1

    iput v5, v0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iput-wide v3, v0, Lᴵᵔ/ˉʿ;->ﹳـ:J

    new-instance v3, Lᴵᵔ/ﾞʻ;

    invoke-direct {v3, p0}, Lᴵᵔ/ﾞʻ;-><init>(Lᴵᵔ/ˉʿ;)V

    iput-object v3, v0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    new-instance v4, Lיـ/ﹳᐧ;

    invoke-direct {v4, v2}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v4, Lᴵᵔ/ᵔᵢ;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lᴵᵔ/ᵔᵢ;-><init>(Lᴵᵔ/ˉʿ;I)V

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ˈⁱ:Lᴵᵔ/ᵎﹶ;

    iput-boolean v2, v0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    iput-boolean v3, v0, Lᴵᵔ/ˉʿ;->ˉٴ:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v6}, Lᴵᵔ/ٴﹶ;->ˈ()Lᴵᵔ/ٴﹶ;

    move-result-object v7

    iget-object v8, v7, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v9, p0, Lᴵᵔ/ˉʿ;->ˈⁱ:Lᴵᵔ/ᵎﹶ;

    iget-object v10, v8, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, v8, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    iput-object v5, v8, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    iget-object v6, v7, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v5, v6, v7}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    iget-object v4, v4, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    check-cast v4, Lᴵᵔ/ـˆ;

    iput-object v4, v0, Lᴵᵔ/ˉʿ;->ٴʼ:Lᴵᵔ/ـˆ;

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_a

    iget-object v6, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᴵᵔ/ٴﹶ;

    iget-object v8, v6, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    if-nez v8, :cond_3

    move-object v8, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lᴵᵔ/ٴﹶ;

    :goto_3
    iput-object v8, v7, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    iget-object v8, v6, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    if-nez v8, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_4
    move v9, v2

    :goto_5
    if-ge v9, v8, :cond_5

    iget-object v10, v7, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    iget-object v11, v6, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    iget-object v8, v6, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_6
    move v9, v2

    :goto_7
    if-ge v9, v8, :cond_7

    iget-object v10, v7, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    iget-object v11, v6, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    iget-object v8, v6, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    move v8, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_8
    move v9, v2

    :goto_9
    if-ge v9, v8, :cond_9

    iget-object v10, v7, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    iget-object v11, v6, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᴵᵔ/ٴﹶ;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_a
    return-object v0
.end method

.method public final ʾˋ(Lᴵᵔ/ﾞᴵ;)Lᴵᵔ/ٴﹶ;
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ٴﹶ;

    if-nez v0, :cond_0

    new-instance v0, Lᴵᵔ/ٴﹶ;

    invoke-direct {v0, p1}, Lᴵᵔ/ٴﹶ;-><init>(Lᴵᵔ/ﾞᴵ;)V

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v1, p1, v0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v1, p1, Lᴵᵔ/ˉʿ;

    if-eqz v1, :cond_0

    check-cast p1, Lᴵᵔ/ˉʿ;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    :cond_0
    return-object v0
.end method

.method public final ʾᵎ(J)I
    .locals 8

    .prologue
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-boolean v2, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʼˎ()J

    move-result-wide v2

    sub-long/2addr v2, p1

    iget p1, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵᵔ/ˆʾ;

    invoke-virtual {p1}, Lᴵᵔ/ˆʾ;->ﹳٴ()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-ltz p1, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ˆʾ;

    invoke-virtual {v3}, Lᴵᵔ/ˆʾ;->ﹳٴ()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lᴵᵔ/ˆʾ;->ﹳٴ()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    move v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method public final ˆʾ()Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ـˏ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ٴﹶ;

    iget-object v3, v3, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->ˆʾ()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ـˏ:Z

    return v1
.end method

.method public final ˈٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˆﾞ:Lᴵᵔ/ʼᐧ;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ٴﹶ;

    iget-object v1, v1, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v2, p0, Lᴵᵔ/ˉʿ;->ˆﾞ:Lᴵᵔ/ʼᐧ;

    invoke-virtual {v1, v2}, Lᴵᵔ/ﾞᴵ;->ʼᐧ(Lᴵᵔ/ʼᐧ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ᵎⁱ()V

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʻٴ()V

    return-void
.end method

.method public final ˉʿ()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lᴵᵔ/ˉʿ;->ˉٴ(ZZ)V

    return-void
.end method

.method public final ˉٴ(ZZ)V
    .locals 8

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    iput-boolean p2, p0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lᴵᵔ/ˉʿ;->ﹳـ:J

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_0

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵᵔ/ٴﹶ;

    iput-boolean v3, v5, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ˈٴ()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʼˎ()J

    move-result-wide v4

    cmp-long p2, v4, v1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot reverse infinite AnimatorSet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    invoke-static {p0}, Lᴵᵔ/ˉʿ;->ᴵᵔ(Lᴵᵔ/ˉʿ;)Z

    move-result p1

    if-nez p1, :cond_e

    move p2, v0

    :goto_2
    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_3

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-object v4, v4, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˈⁱ:Lᴵᵔ/ᵎﹶ;

    invoke-virtual {v4, v5}, Lᴵᵔ/ﾞᴵ;->ˈ(Lᴵᵔ/ˈ;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iget-object v4, p2, Lᴵᵔ/ﾞʻ;->ʽ:Lᴵᵔ/ˉʿ;

    iget-boolean v5, v4, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lᴵᵔ/ˉʿ;->ʼˎ()J

    move-result-wide v4

    iget-wide v6, p2, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    sub-long/2addr v4, v6

    goto :goto_3

    :cond_4
    iget-wide v4, p2, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    :goto_3
    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iput-wide v1, p2, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    iput-boolean v3, p2, Lᴵᵔ/ﾞʻ;->ⁱˊ:Z

    :cond_5
    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ˆʾ()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lᴵᵔ/ˉʿ;->ᵔﹳ(Z)V

    goto :goto_5

    :cond_6
    iget-boolean p2, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ˆʾ()Z

    move-result p2

    if-nez p2, :cond_7

    iput-boolean v0, p0, Lᴵᵔ/ˉʿ;->ـˏ:Z

    invoke-virtual {p0, v3}, Lᴵᵔ/ˉʿ;->ᵔﹳ(Z)V

    :cond_7
    iget-boolean p2, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lᴵᵔ/ˉʿ;->ᵔﹳ(Z)V

    goto :goto_5

    :cond_8
    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_4
    if-ltz p2, :cond_a

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ˆʾ;

    iget v4, v4, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-ne v4, v0, :cond_9

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ˆʾ;

    iget-object v4, v4, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget-object v4, v4, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v4}, Lᴵᵔ/ﾞᴵ;->ˆʾ()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v0}, Lᴵᵔ/ﾞᴵ;->ᵔﹳ(Z)V

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iget-wide v4, p2, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    invoke-virtual {p2, v1}, Lᴵᵔ/ﾞʻ;->ﹳٴ(Z)V

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iget-wide v6, p2, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    :cond_b
    invoke-virtual {p0, v6, v7}, Lᴵᵔ/ˉʿ;->ʾᵎ(J)I

    move-result p2

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v6, v7, p2}, Lᴵᵔ/ˉʿ;->ʽʽ(IJI)V

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_6
    if-ltz v1, :cond_d

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ٴﹶ;

    iget-boolean v0, v0, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_d
    iput p2, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-boolean p2, p0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    if-eqz p2, :cond_e

    invoke-static {p0}, Lᴵᵔ/ﾞᴵ;->ⁱˊ(Lᴵᵔ/ﹳٴ;)V

    :cond_e
    iget-object p2, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7
    if-ge v3, v0, :cond_f

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ˈ;

    invoke-interface {v1, p0}, Lᴵᵔ/ˈ;->ˑﹳ(Lᴵᵔ/ﾞᴵ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ᵔᵢ()V

    :cond_10
    return-void

    :cond_11
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Animators may only be run on Looper threads"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs ˊʻ([Lᴵᵔ/ﾞᴵ;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˉٴ:Z

    invoke-virtual {p0, v0}, Lᴵᵔ/ˉʿ;->ʾˋ(Lᴵᵔ/ﾞᴵ;)Lᴵᵔ/ٴﹶ;

    move-result-object v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lᴵᵔ/ˉʿ;->ʾˋ(Lᴵᵔ/ﾞᴵ;)Lᴵᵔ/ٴﹶ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lᴵᵔ/ٴﹶ;->ⁱˊ(Lᴵᵔ/ٴﹶ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˏי(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lᴵᵔ/ˉʿ;->ˉٴ(ZZ)V

    return-void
.end method

.method public final יـ()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lᴵᵔ/ˉʿ;->ˉٴ(ZZ)V

    return-void
.end method

.method public final ـˆ()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    const/4 v3, -0x1

    iput v3, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iput-wide v1, p0, Lᴵᵔ/ˉʿ;->ﹳـ:J

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iput-wide v1, v3, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    iput-boolean v0, v3, Lᴵᵔ/ﾞʻ;->ⁱˊ:Z

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lᴵᵔ/ʽ;->ﹳٴ()Lᴵᵔ/ʽ;

    move-result-object v1

    iget-object v4, v1, Lᴵᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, v1, Lᴵᵔ/ʽ;->ʽ:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ˈ;

    invoke-interface {v6, p0}, Lᴵᵔ/ˈ;->ˈ(Lᴵᵔ/ﾞᴵ;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_2
    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-object v4, v4, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v5, p0, Lᴵᵔ/ˉʿ;->ˈⁱ:Lᴵᵔ/ᵎﹶ;

    iget-object v6, v4, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v4, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    iput-object v2, v4, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    iput-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    return-void
.end method

.method public final ٴʼ(Lᴵᵔ/ٴﹶ;Ljava/util/ArrayList;)V
    .locals 10

    .prologue
    iget-object v0, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-nez v0, :cond_2

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    if-ne p1, p2, :cond_1

    :goto_0
    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵᵔ/ٴﹶ;

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    if-eq p1, p2, :cond_0

    iput-wide v2, p1, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    iput-wide v2, p1, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_9

    iget-object v4, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-object v5, v4, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v5}, Lᴵᵔ/ﾞᴵ;->ʼˎ()J

    move-result-wide v5

    iput-wide v5, v4, Lᴵᵔ/ٴﹶ;->ٴʼ:J

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ٴﹶ;

    iput-object v7, v6, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ٴﹶ;

    iput-wide v2, v6, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ٴﹶ;

    iput-wide v2, v6, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iput-wide v2, v4, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    iput-wide v2, v4, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    iput-object v7, v4, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cycle found in AnimatorSet: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AnimatorSet"

    nop

    goto :goto_5

    :cond_4
    iget-wide v5, v4, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_8

    iget-wide v7, p1, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    cmp-long v9, v7, v2

    if-nez v9, :cond_5

    iput-object p1, v4, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    iput-wide v2, v4, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    iput-wide v2, v4, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    goto :goto_4

    :cond_5
    cmp-long v5, v7, v5

    if-ltz v5, :cond_6

    iput-object p1, v4, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    iput-wide v7, v4, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    :cond_6
    iget-wide v5, v4, Lᴵᵔ/ٴﹶ;->ٴʼ:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_7

    move-wide v7, v2

    goto :goto_3

    :cond_7
    iget-wide v7, v4, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    add-long/2addr v7, v5

    :goto_3
    iput-wide v7, v4, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    :cond_8
    :goto_4
    invoke-virtual {p0, v4, p2}, Lᴵᵔ/ˉʿ;->ٴʼ(Lᴵᵔ/ٴﹶ;Ljava/util/ArrayList;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ٴﹶ()Z
    .locals 1

    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    return v0
.end method

.method public final ᴵˊ(JLᴵᵔ/ٴﹶ;)J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʼˎ()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p3, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    :goto_0
    sub-long/2addr p1, v0

    return-wide p1

    :cond_0
    iget-wide v0, p3, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    goto :goto_0
.end method

.method public final ᵎⁱ()V
    .locals 7

    .prologue
    iget-wide v0, p0, Lᴵᵔ/ˉʿ;->ᵔי:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-object v4, v4, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-wide v5, p0, Lᴵᵔ/ˉʿ;->ᵔי:J

    invoke-virtual {v4, v5, v6}, Lᴵᵔ/ﾞᴵ;->ᵔʾ(J)Lᴵᵔ/ﾞᴵ;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ٴʼ:Lᴵᵔ/ـˆ;

    invoke-virtual {v0, v2, v3}, Lᴵᵔ/ـˆ;->ᴵᵔ(J)Lᴵᵔ/ـˆ;

    return-void
.end method

.method public final ᵔʾ(J)Lᴵᵔ/ﾞᴵ;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˉٴ:Z

    iput-wide p1, p0, Lᴵᵔ/ˉʿ;->ᵔי:J

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be a value of zero or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ᵎⁱ:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iput v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    :cond_1
    :goto_0
    iget v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget-object v3, v0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget-object v3, v3, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v4, v3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-boolean v4, v4, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-ne v0, v1, :cond_3

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->ˉʿ()V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_1

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->ᵔᵢ()V

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_7

    iget v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    add-int/2addr v0, v2

    iput v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˆʾ;

    iget-object v3, v0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget-object v3, v3, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ᴵᵔ:Lיـ/ﹳᐧ;

    invoke-virtual {v4, v3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ٴﹶ;

    iget-boolean v4, v4, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget v0, v0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->יـ()V

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_4

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lᴵᵔ/ﾞᴵ;->ᵔᵢ()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ـˆ()V

    return-void

    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔﹳ(Z)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˊˋ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Children must be initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ˈٴ()V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_5

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ˆʾ;

    iget v1, v1, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ˆʾ;

    iget-object v1, v1, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget-object v1, v1, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v1, v0}, Lᴵᵔ/ﾞᴵ;->ᵔﹳ(Z)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    move v0, p1

    :goto_2
    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ˆʾ;

    iget v1, v1, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ˆʾ;

    iget-object v1, v1, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget-object v1, v1, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v1, p1}, Lᴵᵔ/ﾞᴵ;->ᵔﹳ(Z)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final ᵢˏ()Ljava/util/ArrayList;
    .locals 5

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ٴﹶ;

    iget-object v4, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    if-eq v3, v4, :cond_0

    iget-object v3, v3, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ﹳٴ(J)Z
    .locals 11

    .prologue
    iget-wide v0, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    :cond_0
    iget-wide v0, p0, Lᴵᵔ/ˉʿ;->ﹳـ:J

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    if-lez v4, :cond_1

    iget-wide v7, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    sub-long v0, p1, v0

    add-long/2addr v0, v7

    iput-wide v0, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    iput-wide v5, p0, Lᴵᵔ/ˉʿ;->ﹳـ:J

    :cond_1
    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iget-wide v7, v0, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    cmp-long v1, v7, v5

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    invoke-virtual {v0, v1}, Lᴵᵔ/ﾞʻ;->ﹳٴ(Z)V

    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iget-wide v9, v1, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    long-to-float v1, v9

    mul-float/2addr v1, v8

    float-to-long v9, v1

    sub-long v9, p1, v9

    iput-wide v9, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iget-wide v9, v1, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    long-to-float v1, v9

    mul-float/2addr v1, v8

    float-to-long v9, v1

    sub-long v9, p1, v9

    iput-wide v9, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    :goto_0
    xor-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lᴵᵔ/ˉʿ;->ᵔﹳ(Z)V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ٴﹶ;

    iput-boolean v4, v1, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-object v0, p0, Lᴵᵔ/ˉʿ;->ʼˈ:Lᴵᵔ/ﾞʻ;

    iput-wide v5, v0, Lᴵᵔ/ﾞʻ;->ﹳٴ:J

    iput-boolean v4, v0, Lᴵᵔ/ﾞʻ;->ⁱˊ:Z

    :cond_4
    iget-boolean v0, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    long-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-wide v0, p0, Lᴵᵔ/ˉʿ;->ˈʿ:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    div-float/2addr p1, v8

    float-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lᴵᵔ/ˉʿ;->ʾᵎ(J)I

    move-result v0

    iget v1, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    invoke-virtual {p0, v1, p1, p2, v0}, Lᴵᵔ/ˉʿ;->ʽʽ(IJI)V

    iput v0, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    move v0, v4

    :goto_2
    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵᵔ/ٴﹶ;

    iget-boolean v2, v1, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-nez v2, :cond_6

    invoke-virtual {p0, p1, p2, v1}, Lᴵᵔ/ˉʿ;->ᴵˊ(JLᴵᵔ/ٴﹶ;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lᴵᵔ/ˉʿ;->ٴᵢ(JLᴵᵔ/ٴﹶ;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v7

    :goto_3
    if-ltz p1, :cond_9

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lᴵᵔ/ٴﹶ;

    iget-boolean p2, p2, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_9
    iget-boolean p1, p0, Lᴵᵔ/ˉʿ;->ˋᵔ:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v7, :cond_a

    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ᵎˊ:Lᴵᵔ/ٴﹶ;

    if-ne p1, p2, :cond_a

    :goto_4
    move p1, v7

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    const/4 p2, 0x3

    if-ge p1, p2, :cond_b

    goto :goto_4

    :cond_b
    move p1, v4

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lᴵᵔ/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lᴵᵔ/ˉʿ;->ˑٴ:I

    iget-object p2, p0, Lᴵᵔ/ˉʿ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v7

    if-ne p1, p2, :cond_b

    goto :goto_4

    :goto_5
    iget-object p2, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    if-eqz p2, :cond_d

    move p2, v4

    :goto_6
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_d

    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˑﹳ;

    invoke-interface {v0, p0}, Lᴵᵔ/ˑﹳ;->ﹳٴ(Lᴵᵔ/ﾞᴵ;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ـˆ()V

    return v7

    :cond_e
    :goto_7
    return v4
.end method

.method public final ﾞʻ(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lᴵᵔ/ˉʿ;->ﹳٴ(J)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic ﾞᴵ()Lᴵᵔ/ﾞᴵ;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ˉʿ;->ʽﹳ()Lᴵᵔ/ˉʿ;

    move-result-object v0

    return-object v0
.end method
