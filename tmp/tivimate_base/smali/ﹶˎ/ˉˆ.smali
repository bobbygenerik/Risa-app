.class public final Lﹶˎ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ʼˎ;
.implements Lᵔⁱ/ﾞʻ;
.implements Lﹳᵢ/ʿᵢ;
.implements Lˊﾞ/ᵔﹳ;
.implements Lﹳᵢ/ˈⁱ;


# static fields
.field public static final ʽⁱ:Ljava/util/Set;


# instance fields
.field public ʻˋ:I

.field public ʻᵎ:Lʽⁱ/ﹳᐧ;

.field public final ʼˈ:Ljava/util/ArrayList;

.field public ʼـ:J

.field public final ʽʽ:Lᐧﹳ/ʽ;

.field public ʽᵔ:J

.field public ʾˊ:Z

.field public final ʾˋ:Ljava/lang/String;

.field public final ʿ:Landroid/util/SparseIntArray;

.field public ʿᵢ:Lﹶˎ/ˉʿ;

.field public final ˆﾞ:Lcom/google/android/gms/internal/measurement/ˊـ;

.field public final ˈʿ:Ljava/util/List;

.field public ˈˏ:Lﹳᵢ/ʻᵎ;

.field public final ˈٴ:Lﹶˎ/ᵎﹶ;

.field public ˈⁱ:[Lﹶˎ/ᵔʾ;

.field public final ˉـ:Ljava/util/HashSet;

.field public final ˉٴ:Lⁱᴵ/ʼˎ;

.field public final ˊʻ:Lʽⁱ/ﹳᐧ;

.field public final ˊˋ:Landroid/os/Handler;

.field public ˊᵔ:Lʽⁱ/ﹳᐧ;

.field public final ˋᵔ:Lﹶˎ/ﾞʻ;

.field public ˎᐧ:Lʽⁱ/ᵔʾ;

.field public ˏᵢ:Z

.field public ˑ:Z

.field public ˑʼ:Z

.field public final ˑٴ:Lﹶˎ/ﾞʻ;

.field public י:Z

.field public יﹳ:Lﹶˎ/ᵔᵢ;

.field public final ـˏ:Ljava/util/Map;

.field public ـᵎ:J

.field public ـﹶ:Z

.field public final ٴʼ:Lᵔⁱ/ˉʿ;

.field public final ٴᵢ:Lⁱᴵ/ﾞʻ;

.field public ٴﹳ:[Z

.field public ᐧᴵ:Z

.field public ᐧﹶ:Z

.field public ᐧﾞ:I

.field public ᴵʼ:I

.field public final ᴵˊ:I

.field public ᴵˑ:[I

.field public final ᴵᵔ:Lᵔⁱ/ˑﹳ;

.field public ᵎʻ:[Z

.field public final ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ᵎᵔ:I

.field public final ᵎⁱ:Lʻᴵ/יـ;

.field public final ᵔי:I

.field public final ᵔٴ:Ljava/util/ArrayList;

.field public ﹳـ:Lᵢˋ/ˑﹳ;

.field public ﹳﹳ:[I

.field public ﹶᐧ:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v4, v6, v1

    aput-object v5, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lﹶˎ/ˉˆ;->ʽⁱ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILᐧﹳ/ʽ;Lﹶˎ/ᵎﹶ;Ljava/util/Map;Lᵔⁱ/ˑﹳ;JLʽⁱ/ﹳᐧ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ʾˋ:Ljava/lang/String;

    iput p2, p0, Lﹶˎ/ˉˆ;->ᴵˊ:I

    iput-object p3, p0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    iput-object p4, p0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iput-object p5, p0, Lﹶˎ/ˉˆ;->ـˏ:Ljava/util/Map;

    iput-object p6, p0, Lﹶˎ/ˉˆ;->ᴵᵔ:Lᵔⁱ/ˑﹳ;

    iput-object p9, p0, Lﹶˎ/ˉˆ;->ˊʻ:Lʽⁱ/ﹳᐧ;

    iput-object p10, p0, Lﹶˎ/ˉˆ;->ٴᵢ:Lⁱᴵ/ﾞʻ;

    iput-object p11, p0, Lﹶˎ/ˉˆ;->ˉٴ:Lⁱᴵ/ʼˎ;

    iput-object p12, p0, Lﹶˎ/ˉˆ;->ᵎⁱ:Lʻᴵ/יـ;

    iput-object p13, p0, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput p14, p0, Lﹶˎ/ˉˆ;->ᵔי:I

    new-instance p1, Lᵔⁱ/ˉʿ;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(IZ)V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    iput-boolean p3, p1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˊـ;

    new-array p1, p3, [I

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ᴵˑ:[I

    new-instance p1, Ljava/util/HashSet;

    sget-object p4, Lﹶˎ/ˉˆ;->ʽⁱ:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p5

    invoke-direct {p1, p5}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˉـ:Ljava/util/HashSet;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p1, p4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ʿ:Landroid/util/SparseIntArray;

    new-array p1, p3, [Lﹶˎ/ᵔʾ;

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    new-array p1, p3, [Z

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ᵎʻ:[Z

    new-array p1, p3, [Z

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ٴﹳ:[Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˈʿ:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ʼˈ:Ljava/util/ArrayList;

    new-instance p1, Lﹶˎ/ﾞʻ;

    invoke-direct {p1, p0, p3}, Lﹶˎ/ﾞʻ;-><init>(Lﹶˎ/ˉˆ;I)V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˑٴ:Lﹶˎ/ﾞʻ;

    new-instance p1, Lﹶˎ/ﾞʻ;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lﹶˎ/ﾞʻ;-><init>(Lﹶˎ/ˉˆ;I)V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˋᵔ:Lﹶˎ/ﾞʻ;

    invoke-static {p2}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˊˋ:Landroid/os/Handler;

    iput-wide p7, p0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iput-wide p7, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    return-void
.end method

.method public static ʽʽ(I)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static ᵢˏ(Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;Z)Lʽⁱ/ﹳᐧ;
    .locals 7

    .prologue
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    iget-object v1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Lᐧˎ/ʼʼ;->ʻٴ(ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2, v0}, Lᐧˎ/ʼʼ;->ـˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ˑﹳ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lʽⁱ/ˉٴ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v3

    iget-object v5, p0, Lʽⁱ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v5, p0, Lʽⁱ/ﹳᐧ;->ⁱˊ:Ljava/lang/String;

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    iget-object v5, p0, Lʽⁱ/ﹳᐧ;->ʽ:Lʼʻ/ᵎⁱ;

    invoke-static {v5}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v5

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ʽ:Lʼʻ/ᵎⁱ;

    iget-object v5, p0, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v5, p0, Lʽⁱ/ﹳᐧ;->ˑﹳ:I

    iput v5, v3, Lʽⁱ/ᵔﹳ;->ˑﹳ:I

    iget v5, p0, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    iput v5, v3, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    iget v6, p0, Lʽⁱ/ﹳᐧ;->ᵔᵢ:I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    iput v6, v3, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    if-eqz p2, :cond_3

    iget p2, p0, Lʽⁱ/ﹳᐧ;->ʼˎ:I

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    iput p2, v3, Lʽⁱ/ᵔﹳ;->ʼˎ:I

    iput-object v0, v3, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    const/4 p2, 0x2

    if-ne v2, p2, :cond_4

    iget p2, p0, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    iput p2, v3, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget p2, p0, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    iput p2, v3, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    iget p2, p0, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    iput p2, v3, Lʽⁱ/ᵔﹳ;->ʾᵎ:F

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    :cond_5
    iget p2, p0, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-eq p2, v5, :cond_6

    if-ne v2, v4, :cond_6

    iput p2, v3, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    :cond_6
    iget-object p0, p0, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lʽⁱ/ٴᵢ;->ⁱˊ(Lʽⁱ/ٴᵢ;)Lʽⁱ/ٴᵢ;

    move-result-object p0

    :cond_7
    iput-object p0, v3, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    :cond_8
    new-instance p0, Lʽⁱ/ﹳᐧ;

    invoke-direct {p0, v3}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    return-object p0
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v1

    iget-object v2, p0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-object v3, p0, Lﹶˎ/ˉˆ;->ˈʿ:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ﹳـ:Lᵢˋ/ˑﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ﹳـ:Lᵢˋ/ˑﹳ;

    iget-object v4, v2, Lﹶˎ/ᵎﹶ;->ᵔʾ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-eqz v4, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v2, p1, p2, v1, v3}, Lﹶʽ/ˏי;->ⁱˊ(JLᵢˋ/ˑﹳ;Ljava/util/List;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ﹳٴ()V

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    const/4 v1, 0x2

    if-lez v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶˎ/ᵔᵢ;

    invoke-virtual {v2, v4}, Lﹶˎ/ᵎﹶ;->ⁱˊ(Lﹶˎ/ᵔᵢ;)I

    move-result v4

    if-ne v4, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Lﹶˎ/ˉˆ;->ʾˋ(I)V

    :cond_4
    iget-object v0, v2, Lﹶˎ/ᵎﹶ;->ᵔʾ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v0, :cond_6

    iget-object v0, v2, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v0}, Lﹶʽ/ˏי;->length()I

    move-result v0

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v2, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v0, p1, p2, v3}, Lﹶʽ/ˏי;->ᵎﹶ(JLjava/util/List;)I

    move-result p1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    iget-object p2, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, Lﹶˎ/ˉˆ;->ʾˋ(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 12

    .prologue
    check-cast p1, Lᵢˋ/ˑﹳ;

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶˎ/ˉˆ;->ﹳـ:Lᵢˋ/ˑﹳ;

    instance-of v0, p1, Lﹶˎ/ˈ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lﹶˎ/ˈ;

    iget-object v1, v0, Lﹶˎ/ˈ;->ٴʼ:[B

    iget-object v2, p0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iput-object v1, v2, Lﹶˎ/ᵎﹶ;->ˉʿ:[B

    iget-object v1, v2, Lﹶˎ/ᵎﹶ;->ˆʾ:Lⁱʽ/ﹳٴ;

    iget-object v2, v0, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-object v2, v2, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iget-object v0, v0, Lﹶˎ/ˈ;->ᵔי:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lʼˊ/ʽ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_0
    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵢˋ/ˑﹳ;->ʾˋ:J

    iget-object v0, p1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ᵎⁱ:Lʻᴵ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iget-object v5, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v6, p1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v7, p1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v8, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, p0, Lﹶˎ/ˉˆ;->ᴵˊ:I

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˏי(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    iget-boolean p1, p0, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    if-nez p1, :cond_1

    new-instance p1, Lⁱי/ٴᵢ;

    invoke-direct {p1}, Lⁱי/ٴᵢ;-><init>()V

    iget-wide v0, p0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iput-wide v0, p1, Lⁱי/ٴᵢ;->ﹳٴ:J

    new-instance v0, Lⁱי/ˉٴ;

    invoke-direct {v0, p1}, Lⁱי/ˉٴ;-><init>(Lⁱי/ٴᵢ;)V

    invoke-virtual {p0, v0}, Lﹶˎ/ˉˆ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    invoke-virtual {p1, p0}, Lᐧﹳ/ʽ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method

.method public final ʽ(I)Z
    .locals 4

    .prologue
    move v0, p1

    :goto_0
    iget-object v1, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶˎ/ᵔᵢ;

    iget-boolean v1, v1, Lﹶˎ/ᵔᵢ;->ʻˋ:Z

    if-eqz v1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹶˎ/ᵔᵢ;

    move v0, v3

    :goto_1
    iget-object v1, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lﹶˎ/ᵔᵢ;->ﾞᴵ(I)I

    move-result v1

    iget-object v2, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v2

    if-le v2, v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
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

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, p0, Lﹶˎ/ˉˆ;->ᴵˊ:I

    move/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final ʾˋ(I)V
    .locals 9

    .prologue
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    :goto_0
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lﹶˎ/ˉˆ;->ʽ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_1
    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ᴵˊ()Lﹶˎ/ᵔᵢ;

    move-result-object v2

    iget-wide v7, v2, Lᵢˋ/ˑﹳ;->ˉٴ:J

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶˎ/ᵔᵢ;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p1, v3}, Lᐧˎ/ʼʼ;->ˉـ(Ljava/util/ArrayList;II)V

    const/4 p1, 0x0

    move v3, p1

    :goto_2
    iget-object v4, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lﹶˎ/ᵔᵢ;->ﾞᴵ(I)I

    move-result v4

    iget-object v5, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lﹳᵢ/ᴵˑ;->ᵔʾ(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v0, p0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iput-wide v0, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶˎ/ᵔᵢ;

    iput-boolean v1, v0, Lﹶˎ/ᵔᵢ;->ﹶᐧ:Z

    :goto_3
    iput-boolean p1, p0, Lﹶˎ/ˉˆ;->ʾˊ:Z

    iget v4, p0, Lﹶˎ/ˉˆ;->ᵎᵔ:I

    iget-wide v5, v2, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-object v3, p0, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˊʻ(IJJ)V

    return-void
.end method

.method public final ʾᵎ([Lʽⁱ/ـˏ;)Lﹳᵢ/ʻᵎ;
    .locals 7

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v3, v3, [Lʽⁱ/ﹳᐧ;

    move v4, v0

    :goto_1
    iget v5, v2, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v4, v5, :cond_0

    iget-object v5, v2, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v5, v5, v4

    iget-object v6, p0, Lﹶˎ/ˉˆ;->ٴᵢ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v6, v5}, Lⁱᴵ/ﾞʻ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v6

    invoke-virtual {v5}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v5

    iput v6, v5, Lʽⁱ/ᵔﹳ;->ᵔٴ:I

    new-instance v6, Lʽⁱ/ﹳᐧ;

    invoke-direct {v6, v5}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Lʽⁱ/ـˏ;

    iget-object v2, v2, Lʽⁱ/ـˏ;->ⁱˊ:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lﹳᵢ/ʻᵎ;

    invoke-direct {v0, p1}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    return-object v0
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˈٴ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉˆ()J
    .locals 7

    .prologue
    iget-boolean v0, p0, Lﹶˎ/ˉˆ;->ʾˊ:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lﹶˎ/ˉˆ;->ـᵎ:J

    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ᴵˊ()Lﹶˎ/ᵔᵢ;

    move-result-object v2

    iget-boolean v3, v2, Lﹶˎ/ᵔᵢ;->ـﹶ:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶˎ/ᵔᵢ;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lᵢˋ/ˑﹳ;->ˉٴ:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Lﹶˎ/ˉˆ;->ᐧᴵ:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lﹳᵢ/ᴵˑ;->ᵔﹳ()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final ˉٴ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lﹶˎ/ˉˆ;->ᐧﹶ:Z

    invoke-virtual {v4, v5}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lﹶˎ/ˉˆ;->ᐧﹶ:Z

    return-void
.end method

.method public final ˊʻ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ʽ()V

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-object v1, v0, Lﹶˎ/ᵎﹶ;->ᵔʾ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v1, :cond_2

    iget-object v1, v0, Lﹶˎ/ᵎﹶ;->ˉˆ:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ʼᐧ:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    iget-object v0, v0, Lﹶˎ/ᵎﹶ;->ˉˆ:Landroid/net/Uri;

    iget-object v1, v1, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ⁱˊ;

    iget-object v1, v0, Lʽˑ/ⁱˊ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v1}, Lᵔⁱ/ˉʿ;->ʽ()V

    iget-object v0, v0, Lʽˑ/ⁱˊ;->ٴʼ:Ljava/io/IOException;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    throw v1
.end method

.method public final ˑﹳ(Lˊﾞ/ʾˋ;)V
    .locals 0

    return-void
.end method

.method public final יـ()V
    .locals 2

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˊˋ:Landroid/os/Handler;

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ˑٴ:Lﹶˎ/ﾞʻ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move-object/from16 v1, p1

    check-cast v1, Lᵢˋ/ˑﹳ;

    instance-of v2, v1, Lﹶˎ/ᵔᵢ;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lﹶˎ/ᵔᵢ;

    invoke-virtual {v3}, Lﹶˎ/ᵔᵢ;->ᵎﹶ()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v12, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, v12

    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    :cond_0
    sget-object v1, Lᵔⁱ/ˉʿ;->ˈٴ:Lʼˊ/ⁱˊ;

    return-object v1

    :cond_1
    iget-object v3, v1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-wide v3, v3, Lـˊ/ʼᐧ;->ᴵˊ:J

    move v5, v2

    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-object v6, v1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v6, v6, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v6, p4

    invoke-direct {v2, v6, v7}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-wide v6, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    invoke-static {v6, v7}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    iget-wide v6, v1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    invoke-static {v6, v7}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    new-instance v6, Lʼٴ/ʾᵎ;

    const/16 v7, 0xb

    move/from16 v8, p7

    invoke-direct {v6, v8, v7, v12}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object v7, v0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-object v8, v7, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ⁱˊ(Lﹶʽ/ˏי;)Lᵔⁱ/ᵔᵢ;

    move-result-object v8

    iget-object v9, v0, Lﹶˎ/ˉˆ;->ᵎⁱ:Lʻᴵ/יـ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v6}, Lʻᴵ/יـ;->ﹳٴ(Lᵔⁱ/ᵔᵢ;Lʼٴ/ʾᵎ;)Lʼˊ/ⁱˊ;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    iget v11, v8, Lʼˊ/ⁱˊ;->ʾˋ:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    iget-wide v13, v8, Lʼˊ/ⁱˊ;->ᴵˊ:J

    iget-object v8, v7, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    iget-object v7, v7, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    iget-object v11, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v7, v11}, Lʽⁱ/ـˏ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)I

    move-result v7

    invoke-interface {v8, v7}, Lﹶʽ/ˏי;->ʽﹳ(I)I

    move-result v7

    invoke-interface {v8, v7, v13, v14}, Lﹶʽ/ˏי;->ˉˆ(IJ)Z

    move-result v7

    move v14, v7

    goto :goto_0

    :cond_2
    move v14, v10

    :goto_0
    if-eqz v14, :cond_6

    if-eqz v5, :cond_5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶˎ/ᵔᵢ;

    if-ne v4, v1, :cond_3

    move v10, v5

    :cond_3
    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v3, v0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iput-wide v3, v0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶˎ/ᵔᵢ;

    iput-boolean v5, v3, Lﹶˎ/ᵔᵢ;->ﹶᐧ:Z

    :cond_5
    :goto_1
    sget-object v3, Lᵔⁱ/ˉʿ;->ᴵᵔ:Lʼˊ/ⁱˊ;

    :goto_2
    move-object v15, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v6}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_7

    new-instance v5, Lʼˊ/ⁱˊ;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6, v10}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    move-object v3, v5

    goto :goto_2

    :cond_7
    sget-object v3, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    goto :goto_2

    :goto_3
    invoke-virtual {v15}, Lʼˊ/ⁱˊ;->ﹳٴ()Z

    move-result v16

    xor-int/lit8 v13, v16, 0x1

    iget v3, v1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iget-object v5, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v6, v1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v7, v1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v8, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, v1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, v0, Lﹶˎ/ˉˆ;->ᴵˊ:I

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽﹳ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_8

    const/4 v1, 0x0

    iput-object v1, v0, Lﹶˎ/ˉˆ;->ﹳـ:Lᵢˋ/ˑﹳ;

    :cond_8
    if-eqz v14, :cond_a

    iget-boolean v1, v0, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    if-nez v1, :cond_9

    new-instance v1, Lⁱי/ٴᵢ;

    invoke-direct {v1}, Lⁱי/ٴᵢ;-><init>()V

    iget-wide v2, v0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iput-wide v2, v1, Lⁱי/ٴᵢ;->ﹳٴ:J

    new-instance v2, Lⁱי/ˉٴ;

    invoke-direct {v2, v1}, Lⁱי/ˉٴ;-><init>(Lⁱי/ٴᵢ;)V

    invoke-virtual {v0, v2}, Lﹶˎ/ˉˆ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    return-object v15

    :cond_9
    iget-object v1, v0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    invoke-virtual {v1, v0}, Lᐧﹳ/ʽ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_a
    return-object v15
.end method

.method public final varargs ٴᵢ([Lʽⁱ/ـˏ;[I)V
    .locals 5

    .prologue
    invoke-virtual {p0, p1}, Lﹶˎ/ˉˆ;->ʾᵎ([Lʽⁱ/ـˏ;)Lﹳᵢ/ʻᵎ;

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ﹶᐧ:Ljava/util/Set;

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lﹶˎ/ˉˆ;->ﹶᐧ:Ljava/util/Set;

    iget-object v4, p0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {v4, v2}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lﹶˎ/ˉˆ;->ʻˋ:I

    new-instance p1, Lٴˉ/ⁱˊ;

    const/16 p2, 0x10

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    invoke-direct {p1, p2, v0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iget-object p2, p0, Lﹶˎ/ˉˆ;->ˊˋ:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 72

    .prologue
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lﹶˎ/ˉˆ;->ʾˊ:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v1}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move/from16 v29, v2

    goto/16 :goto_3a

    :cond_1
    invoke-virtual {v0}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_3

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-wide v6, v0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    iget-object v8, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v9, v8

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    iget-wide v12, v0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    iput-wide v12, v11, Lﹳᵢ/ᴵˑ;->ˏי:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v20, v3

    move-wide/from16 v22, v6

    goto :goto_5

    :cond_3
    invoke-virtual {v0}, Lﹶˎ/ˉˆ;->ᴵˊ()Lﹶˎ/ᵔᵢ;

    move-result-object v3

    iget-boolean v6, v3, Lﹶˎ/ᵔᵢ;->ـﹶ:Z

    iget-wide v7, v3, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lﹶˎ/ᵔᵢ;->ᵎﹶ()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v9, v3, Lﹶˎ/ᵔᵢ;->ﹳﹳ:J

    cmp-long v3, v9, v4

    if-eqz v3, :cond_5

    add-long/2addr v7, v9

    goto :goto_1

    :cond_5
    move-wide v7, v4

    :goto_1
    move-wide v6, v7

    goto :goto_3

    :cond_6
    :goto_2
    iget-wide v9, v0, Lﹶˎ/ˉˆ;->ـᵎ:J

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_3
    iget-wide v8, v0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iget-boolean v3, v0, Lﹶˎ/ˉˆ;->ᐧᴵ:Z

    iget-object v10, v0, Lﹶˎ/ˉˆ;->ˈʿ:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v11, v3

    move v12, v2

    :goto_4
    if-ge v12, v11, :cond_7

    aget-object v13, v3, v12

    invoke-virtual {v13}, Lﹳᵢ/ᴵˑ;->ﹳᐧ()J

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    move-wide/from16 v22, v8

    move-object/from16 v20, v10

    :goto_5
    iget-object v3, v0, Lﹶˎ/ˉˆ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    iput-boolean v2, v3, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iput-object v8, v3, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    iget-boolean v9, v0, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    if-nez v9, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v24, v2

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v24, 0x1

    :goto_7
    iget-object v9, v0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-object v11, v9, Lﹶˎ/ᵎﹶ;->ˆʾ:Lⁱʽ/ﹳٴ;

    iget-object v12, v9, Lﹶˎ/ᵎﹶ;->ˑﹳ:[Landroid/net/Uri;

    iget-object v13, v9, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object v14, v8

    goto :goto_8

    :cond_a
    invoke-static/range {v20 .. v20}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lﹶˎ/ᵔᵢ;

    :goto_8
    if-nez v14, :cond_b

    const/4 v8, -0x1

    :goto_9
    move-object/from16 v15, p1

    move-wide/from16 v25, v4

    goto :goto_a

    :cond_b
    iget-object v8, v9, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    iget-object v15, v14, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v8, v15}, Lʽⁱ/ـˏ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)I

    move-result v8

    goto :goto_9

    :goto_a
    iget-wide v4, v15, Lⁱי/ˉٴ;->ﹳٴ:J

    sub-long v17, v6, v4

    move-object/from16 v28, v11

    iget-wide v10, v9, Lﹶˎ/ᵎﹶ;->יـ:J

    cmp-long v15, v10, v25

    if-eqz v15, :cond_c

    sub-long/2addr v10, v4

    goto :goto_b

    :cond_c
    move-wide/from16 v10, v25

    :goto_b
    if-eqz v14, :cond_e

    iget-boolean v15, v9, Lﹶˎ/ᵎﹶ;->ᵔﹳ:Z

    if-nez v15, :cond_e

    move-object/from16 v30, v3

    iget-wide v2, v14, Lᵢˋ/ˑﹳ;->ˉٴ:J

    move-wide/from16 v31, v2

    iget-wide v2, v14, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    sub-long v2, v31, v2

    move-wide/from16 v31, v2

    sub-long v2, v17, v31

    move-wide/from16 v33, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    cmp-long v2, v10, v25

    if-eqz v2, :cond_d

    sub-long v10, v10, v31

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_d
    :goto_c
    move-wide/from16 v16, v17

    const/4 v2, -0x1

    move-wide/from16 v18, v10

    goto :goto_d

    :cond_e
    move-object/from16 v30, v3

    move-wide/from16 v33, v4

    goto :goto_c

    :goto_d
    invoke-virtual {v9, v14, v6, v7}, Lﹶˎ/ᵎﹶ;->ﹳٴ(Lﹶˎ/ᵔᵢ;J)[Lᵢˋ/ˉʿ;

    move-result-object v21

    move-object v3, v13

    iget-object v13, v9, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    move-wide v4, v6

    move-object v7, v14

    move-wide/from16 v14, v33

    invoke-interface/range {v13 .. v21}, Lﹶʽ/ˏי;->ٴﹶ(JJJLjava/util/List;[Lᵢˋ/ˉʿ;)V

    iget-object v6, v9, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v6}, Lﹶʽ/ˏי;->ʼˎ()I

    move-result v14

    move v15, v8

    if-eq v8, v14, :cond_f

    const/4 v8, 0x1

    goto :goto_e

    :cond_f
    const/4 v8, 0x0

    :goto_e
    aget-object v6, v12, v14

    invoke-virtual {v3, v6}, Lʽˑ/ʽ;->ʽ(Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_10

    move-object/from16 v10, v30

    iput-object v6, v10, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    iput-object v6, v9, Lﹶˎ/ᵎﹶ;->ʼᐧ:Landroid/net/Uri;

    move-object v15, v1

    move-object v4, v10

    goto/16 :goto_34

    :cond_10
    move-object/from16 v10, v30

    const/4 v11, 0x1

    invoke-virtual {v3, v6, v11}, Lʽˑ/ʽ;->ﹳٴ(Landroid/net/Uri;Z)Lʽˑ/ﾞʻ;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v12

    iget-wide v11, v13, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    iget-boolean v2, v13, Lʽˑ/ʼᐧ;->ʽ:Z

    iput-boolean v2, v9, Lﹶˎ/ᵎﹶ;->ᵔﹳ:Z

    iget-boolean v2, v13, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz v2, :cond_11

    move-wide/from16 v18, v4

    move-wide/from16 v4, v25

    goto :goto_f

    :cond_11
    move-wide/from16 v18, v4

    iget-wide v4, v13, Lʽˑ/ﾞʻ;->ʽﹳ:J

    add-long/2addr v4, v11

    move-wide/from16 v20, v4

    iget-wide v4, v3, Lʽˑ/ʽ;->ᵔٴ:J

    sub-long v4, v20, v4

    :goto_f
    iput-wide v4, v9, Lﹶˎ/ᵎﹶ;->יـ:J

    iget-wide v4, v3, Lʽˑ/ʽ;->ᵔٴ:J

    sub-long/2addr v11, v4

    move-object v2, v6

    move-object v6, v9

    move-object v4, v10

    move-wide v10, v11

    move-object v9, v13

    move-wide/from16 v12, v18

    invoke-virtual/range {v6 .. v13}, Lﹶˎ/ᵎﹶ;->ʽ(Lﹶˎ/ᵔᵢ;ZLʽˑ/ﾞʻ;JJ)Landroid/util/Pair;

    move-result-object v5

    move-object/from16 p1, v2

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v8, :cond_13

    :goto_10
    move-wide/from16 v20, v10

    :cond_12
    :goto_11
    move-object/from16 v8, v18

    move-object/from16 v5, v19

    goto :goto_13

    :cond_13
    if-nez v18, :cond_14

    goto :goto_10

    :cond_14
    move-wide/from16 v20, v10

    iget-wide v10, v9, Lʽˑ/ﾞʻ;->ٴﹶ:J

    cmp-long v5, v6, v10

    if-gez v5, :cond_15

    goto :goto_12

    :cond_15
    invoke-static {v9, v6, v7, v2}, Lﹶˎ/ᵎﹶ;->ˈ(Lʽˑ/ﾞʻ;JI)Lᐧᵎ/ﹳﹳ;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_11

    :cond_16
    iget-object v5, v5, Lᐧᵎ/ﹳﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v5, Lʽˑ/ˆʾ;

    iget-wide v10, v5, Lʽˑ/ˆʾ;->ᴵᵔ:J

    add-long v10, v20, v10

    cmp-long v5, v10, v22

    if-gez v5, :cond_12

    :goto_12
    aget-object v2, v16, v15

    const/4 v11, 0x1

    invoke-virtual {v3, v2, v11}, Lʽˑ/ʽ;->ﹳٴ(Landroid/net/Uri;Z)Lʽˑ/ﾞʻ;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v9, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    iget-wide v7, v3, Lʽˑ/ʽ;->ᵔٴ:J

    sub-long v10, v5, v7

    const/4 v8, 0x0

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    invoke-virtual/range {v6 .. v13}, Lﹶˎ/ᵎﹶ;->ʽ(Lﹶˎ/ᵔᵢ;ZLʽˑ/ﾞʻ;JJ)Landroid/util/Pair;

    move-result-object v5

    move-object v8, v7

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-wide/from16 v20, v10

    move v14, v15

    move-object v10, v9

    move-object v9, v2

    move v2, v5

    move-object v5, v6

    move-wide/from16 v6, v18

    goto :goto_14

    :goto_13
    move-object v10, v9

    move-object/from16 v9, p1

    :goto_14
    iget-object v11, v10, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    move-wide/from16 v18, v12

    iget-boolean v12, v10, Lʽˑ/ʼᐧ;->ʽ:Z

    move/from16 v22, v12

    iget-wide v12, v10, Lʽˑ/ﾞʻ;->ٴﹶ:J

    move-wide/from16 v30, v12

    iget-object v12, v10, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    if-eq v14, v15, :cond_17

    const/4 v13, -0x1

    if-eq v15, v13, :cond_17

    aget-object v13, v16, v15

    iget-object v3, v3, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽˑ/ⁱˊ;

    if-eqz v3, :cond_17

    const/4 v13, 0x0

    iput-boolean v13, v3, Lʽˑ/ⁱˊ;->ᵎˊ:Z

    :cond_17
    cmp-long v3, v6, v30

    if-gez v3, :cond_18

    new-instance v2, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v2}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v2, v5, Lﹶˎ/ᵎﹶ;->ᵔʾ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    :goto_15
    move-object v15, v1

    goto/16 :goto_34

    :cond_18
    invoke-static {v10, v6, v7, v2}, Lﹶˎ/ᵎﹶ;->ˈ(Lʽˑ/ﾞʻ;JI)Lᐧᵎ/ﹳﹳ;

    move-result-object v2

    if-nez v2, :cond_1c

    iget-boolean v2, v10, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-nez v2, :cond_19

    iput-object v9, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    iput-object v9, v5, Lﹶˎ/ᵎﹶ;->ʼᐧ:Landroid/net/Uri;

    goto :goto_15

    :cond_19
    if-nez v24, :cond_1a

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v11, 0x1

    goto :goto_16

    :cond_1b
    new-instance v2, Lᐧᵎ/ﹳﹳ;

    invoke-static {v12}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽˑ/ˆʾ;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    add-long v12, v30, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v12, v6

    const/4 v6, -0x1

    invoke-direct {v2, v3, v12, v13, v6}, Lᐧᵎ/ﹳﹳ;-><init>(Lʽˑ/ˆʾ;JI)V

    goto :goto_17

    :goto_16
    iput-boolean v11, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    goto :goto_15

    :cond_1c
    :goto_17
    iget-boolean v3, v2, Lᐧᵎ/ﹳﹳ;->ˈ:Z

    iget-object v6, v2, Lᐧᵎ/ﹳﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v6, Lʽˑ/ˆʾ;

    const/4 v7, 0x0

    iput-object v7, v5, Lﹶˎ/ᵎﹶ;->ʼᐧ:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v7, v6, Lʽˑ/ˆʾ;->ᴵˊ:Lʽˑ/ʼˎ;

    iget-wide v12, v6, Lʽˑ/ˆʾ;->ᴵᵔ:J

    if-eqz v7, :cond_1e

    iget-object v7, v7, Lʽˑ/ˆʾ;->ٴᵢ:Ljava/lang/String;

    if-nez v7, :cond_1d

    goto :goto_19

    :cond_1d
    invoke-static {v11, v7}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :goto_18
    move/from16 v16, v3

    const/4 v15, 0x1

    goto :goto_1a

    :cond_1e
    :goto_19
    const/4 v7, 0x0

    goto :goto_18

    :goto_1a
    invoke-virtual {v5, v7, v14, v15}, Lﹶˎ/ᵎﹶ;->ˑﹳ(Landroid/net/Uri;IZ)Lﹶˎ/ˈ;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    goto :goto_21

    :cond_1f
    iget-object v3, v6, Lʽˑ/ˆʾ;->ٴᵢ:Ljava/lang/String;

    if-nez v3, :cond_20

    const/4 v3, 0x0

    :goto_1b
    move-wide/from16 v23, v12

    const/4 v15, 0x0

    goto :goto_1c

    :cond_20
    invoke-static {v11, v3}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1b

    :goto_1c
    invoke-virtual {v5, v3, v14, v15}, Lﹶˎ/ᵎﹶ;->ˑﹳ(Landroid/net/Uri;IZ)Lﹶˎ/ˈ;

    move-result-object v12

    iput-object v12, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    if-eqz v12, :cond_21

    goto :goto_21

    :cond_21
    instance-of v12, v6, Lʽˑ/ᵎﹶ;

    if-eqz v12, :cond_24

    move-object v12, v6

    check-cast v12, Lʽˑ/ᵎﹶ;

    iget-boolean v12, v12, Lʽˑ/ᵎﹶ;->ᵔי:Z

    if-nez v12, :cond_23

    iget v12, v2, Lᐧᵎ/ﹳﹳ;->ˑﹳ:I

    if-nez v12, :cond_22

    if-eqz v22, :cond_22

    goto :goto_1d

    :cond_22
    const/16 v60, 0x0

    goto :goto_1e

    :cond_23
    :goto_1d
    const/16 v60, 0x1

    goto :goto_1e

    :cond_24
    move/from16 v60, v22

    :goto_1e
    if-nez v8, :cond_26

    sget-object v12, Lﹶˎ/ᵔᵢ;->ˑʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_25
    :goto_1f
    const/16 v59, 0x0

    goto :goto_20

    :cond_26
    iget-object v12, v8, Lﹶˎ/ᵔᵢ;->ˆﾞ:Landroid/net/Uri;

    invoke-virtual {v9, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    iget-boolean v12, v8, Lﹶˎ/ᵔᵢ;->ـﹶ:Z

    if-eqz v12, :cond_27

    goto :goto_1f

    :cond_27
    add-long v12, v20, v23

    if-eqz v60, :cond_28

    cmp-long v12, v12, v18

    if-gez v12, :cond_25

    :cond_28
    const/16 v59, 0x1

    :goto_20
    if-eqz v59, :cond_29

    if-eqz v16, :cond_29

    :goto_21
    goto/16 :goto_15

    :cond_29
    iget-object v12, v5, Lﹶˎ/ᵎﹶ;->ﹳٴ:Lﹶˎ/ʽ;

    iget-object v13, v5, Lﹶˎ/ᵎﹶ;->ⁱˊ:Lـˊ/ﾞᴵ;

    iget-object v15, v5, Lﹶˎ/ᵎﹶ;->ﾞᴵ:[Lʽⁱ/ﹳᐧ;

    aget-object v34, v15, v14

    iget-object v14, v5, Lﹶˎ/ᵎﹶ;->ʼˎ:Ljava/util/List;

    iget-object v15, v5, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v15}, Lﹶʽ/ˏי;->ˉʿ()I

    move-result v41

    iget-object v15, v5, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v15}, Lﹶʽ/ˏי;->ﹳᐧ()Ljava/lang/Object;

    move-result-object v42

    iget-boolean v15, v5, Lﹶˎ/ᵎﹶ;->ﾞʻ:Z

    move-object/from16 v31, v12

    iget-object v12, v5, Lﹶˎ/ᵎﹶ;->ˈ:Lⁱʽ/ﹳٴ;

    if-nez v3, :cond_2a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v40, v14

    move/from16 v53, v15

    move-object/from16 v14, v28

    const/4 v3, 0x0

    goto :goto_22

    :cond_2a
    move-object/from16 v40, v14

    move/from16 v53, v15

    move-object/from16 v14, v28

    iget-object v15, v14, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v15, Lʼˊ/ʽ;

    invoke-virtual {v15, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :goto_22
    if-nez v7, :cond_2b

    const/4 v7, 0x0

    goto :goto_23

    :cond_2b
    iget-object v14, v14, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v14, Lʼˊ/ʽ;

    invoke-virtual {v14, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    :goto_23
    iget-object v5, v5, Lﹶˎ/ᵎﹶ;->ٴﹶ:Lʻʿ/יـ;

    sget-object v14, Lﹶˎ/ᵔᵢ;->ˑʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v65, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v14, v6, Lʽˑ/ˆʾ;->ʾˋ:Ljava/lang/String;

    invoke-static {v11, v14}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object v15, v1

    iget-wide v0, v6, Lʽˑ/ˆʾ;->ᵎⁱ:J

    move-wide/from16 v66, v0

    iget-wide v0, v6, Lʽˑ/ˆʾ;->ٴʼ:J

    if-eqz v16, :cond_2c

    const/16 v17, 0x8

    move/from16 v71, v17

    :goto_24
    move-wide/from16 v68, v0

    goto :goto_25

    :cond_2c
    const/16 v71, 0x0

    goto :goto_24

    :goto_25
    const-string v0, "The uri must be set."

    invoke-static {v14, v0}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v61, Lـˊ/ᵔᵢ;

    const/16 v63, 0x1

    const/16 v64, 0x0

    const/16 v70, 0x0

    move-object/from16 v62, v14

    invoke-direct/range {v61 .. v71}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    move-object/from16 v33, v61

    if-eqz v3, :cond_2d

    const/16 v35, 0x1

    goto :goto_26

    :cond_2d
    const/16 v35, 0x0

    :goto_26
    if-eqz v35, :cond_2e

    iget-object v1, v6, Lʽˑ/ˆʾ;->ˉٴ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lﹶˎ/ᵔᵢ;->ˑﹳ(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_27

    :cond_2e
    const/4 v1, 0x0

    :goto_27
    if-eqz v3, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lﹶˎ/ﹳٴ;

    invoke-direct {v14, v13, v3, v1}, Lﹶˎ/ﹳٴ;-><init>(Lـˊ/ﾞᴵ;[B[B)V

    move-object/from16 v32, v14

    goto :goto_28

    :cond_2f
    move-object/from16 v32, v13

    :goto_28
    iget-object v1, v6, Lʽˑ/ˆʾ;->ᴵˊ:Lʽˑ/ʼˎ;

    if-eqz v1, :cond_33

    if-eqz v7, :cond_30

    const/4 v3, 0x1

    goto :goto_29

    :cond_30
    const/4 v3, 0x0

    :goto_29
    if-eqz v3, :cond_31

    iget-object v14, v1, Lʽˑ/ˆʾ;->ˉٴ:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lﹶˎ/ᵔᵢ;->ˑﹳ(Ljava/lang/String;)[B

    move-result-object v14

    :goto_2a
    move/from16 p1, v3

    goto :goto_2b

    :cond_31
    const/4 v14, 0x0

    goto :goto_2a

    :goto_2b
    iget-object v3, v1, Lʽˑ/ˆʾ;->ʾˋ:Ljava/lang/String;

    invoke-static {v11, v3}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v11, v4

    move-object/from16 v17, v5

    iget-wide v4, v1, Lʽˑ/ˆʾ;->ᵎⁱ:J

    move-wide/from16 v66, v4

    iget-wide v4, v1, Lʽˑ/ˆʾ;->ٴʼ:J

    invoke-static {v3, v0}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v61, Lـˊ/ᵔᵢ;

    const/16 v63, 0x1

    const/16 v64, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v62, v3

    move-wide/from16 v68, v4

    invoke-direct/range {v61 .. v71}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    if-eqz v7, :cond_32

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lﹶˎ/ﹳٴ;

    invoke-direct {v0, v13, v7, v14}, Lﹶˎ/ﹳٴ;-><init>(Lـˊ/ﾞᴵ;[B[B)V

    goto :goto_2c

    :cond_32
    move-object v0, v13

    :goto_2c
    move/from16 v38, p1

    move-object/from16 v36, v0

    move-object/from16 v0, v61

    goto :goto_2d

    :cond_33
    move-object v11, v4

    move-object/from16 v17, v5

    const/4 v0, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    :goto_2d
    add-long v43, v20, v23

    iget-wide v3, v6, Lʽˑ/ˆʾ;->ʽʽ:J

    add-long v45, v43, v3

    iget v1, v10, Lʽˑ/ﾞʻ;->ˆʾ:I

    iget v3, v6, Lʽˑ/ˆʾ;->ˈٴ:I

    add-int/2addr v1, v3

    if-eqz v8, :cond_38

    iget-object v3, v8, Lﹶˎ/ᵔᵢ;->ˋᵔ:Lـˊ/ᵔᵢ;

    if-eq v0, v3, :cond_35

    if-eqz v0, :cond_34

    if-eqz v3, :cond_34

    iget-object v4, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iget-object v5, v3, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-wide v4, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    iget-wide v13, v3, Lـˊ/ᵔᵢ;->ˑﹳ:J

    cmp-long v3, v4, v13

    if-nez v3, :cond_34

    goto :goto_2e

    :cond_34
    const/4 v10, 0x0

    goto :goto_2f

    :cond_35
    :goto_2e
    const/4 v10, 0x1

    :goto_2f
    iget-object v3, v8, Lﹶˎ/ᵔᵢ;->ˆﾞ:Landroid/net/Uri;

    invoke-virtual {v9, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-boolean v3, v8, Lﹶˎ/ᵔᵢ;->ـﹶ:Z

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_30

    :cond_36
    const/4 v3, 0x0

    :goto_30
    iget-object v4, v8, Lﹶˎ/ᵔᵢ;->ʿ:Lˆʻ/ʼˎ;

    iget-object v5, v8, Lﹶˎ/ᵔᵢ;->ʿᵢ:Lᐧˎ/ﹳᐧ;

    if-eqz v10, :cond_37

    if-eqz v3, :cond_37

    iget-boolean v3, v8, Lﹶˎ/ᵔᵢ;->ﹶᐧ:Z

    if-nez v3, :cond_37

    iget v3, v8, Lﹶˎ/ᵔᵢ;->ᵔי:I

    if-ne v3, v1, :cond_37

    iget-object v8, v8, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    goto :goto_31

    :cond_37
    const/4 v8, 0x0

    :goto_31
    move-object/from16 v56, v8

    :goto_32
    move-object/from16 v57, v4

    move-object/from16 v58, v5

    goto :goto_33

    :cond_38
    new-instance v4, Lˆʻ/ʼˎ;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lˆʻ/ʼˎ;-><init>(Lˆʻ/ᵎﹶ;)V

    new-instance v5, Lᐧˎ/ﹳᐧ;

    const/16 v3, 0xa

    invoke-direct {v5, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    move-object/from16 v56, v7

    goto :goto_32

    :goto_33
    new-instance v30, Lﹶˎ/ᵔᵢ;

    iget-wide v3, v2, Lᐧᵎ/ﹳﹳ;->ʽ:J

    iget v2, v2, Lᐧᵎ/ﹳﹳ;->ˑﹳ:I

    const/16 v27, 0x1

    xor-int/lit8 v50, v16, 0x1

    iget-boolean v5, v6, Lʽˑ/ˆʾ;->ᵎˊ:Z

    iget-object v7, v12, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lᐧˎ/ـˆ;

    if-nez v8, :cond_39

    new-instance v8, Lᐧˎ/ـˆ;

    const-wide v12, 0x7ffffffffffffffeL

    invoke-direct {v8, v12, v13}, Lᐧˎ/ـˆ;-><init>(J)V

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    move-object/from16 v54, v8

    iget-object v6, v6, Lʽˑ/ˆʾ;->ˊʻ:Lʽⁱ/ᵔʾ;

    move-object/from16 v37, v0

    move/from16 v51, v1

    move/from16 v49, v2

    move-wide/from16 v47, v3

    move/from16 v52, v5

    move-object/from16 v55, v6

    move-object/from16 v39, v9

    move-object/from16 v61, v17

    invoke-direct/range {v30 .. v61}, Lﹶˎ/ᵔᵢ;-><init>(Lﹶˎ/ʽ;Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ZLـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLᐧˎ/ـˆ;Lʽⁱ/ᵔʾ;Lﹶˎ/ⁱˊ;Lˆʻ/ʼˎ;Lᐧˎ/ﹳᐧ;ZZLʻʿ/יـ;)V

    move-object v4, v11

    move-object/from16 v0, v30

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    :goto_34
    iget-boolean v0, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵢˋ/ˑﹳ;

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    if-eqz v0, :cond_3a

    move-object/from16 v0, p0

    move-wide/from16 v3, v25

    iput-wide v3, v0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    const/4 v11, 0x1

    iput-boolean v11, v0, Lﹶˎ/ˉˆ;->ʾˊ:Z

    return v11

    :cond_3a
    move-object/from16 v0, p0

    const/4 v11, 0x1

    if-nez v1, :cond_3c

    if-eqz v2, :cond_3b

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    iget-object v1, v1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﹶˎ/ʼˎ;

    iget-object v1, v1, Lﹶˎ/ʼˎ;->ᴵˊ:Lʽˑ/ʽ;

    iget-object v1, v1, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽˑ/ⁱˊ;

    invoke-virtual {v1, v11}, Lʽˑ/ⁱˊ;->ʽ(Z)V

    const/16 v29, 0x0

    return v29

    :cond_3b
    const/16 v29, 0x0

    goto/16 :goto_3a

    :cond_3c
    instance-of v2, v1, Lﹶˎ/ᵔᵢ;

    if-eqz v2, :cond_44

    move-object v2, v1

    check-cast v2, Lﹶˎ/ᵔᵢ;

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_37

    :cond_3d
    invoke-virtual {v0}, Lﹶˎ/ˉˆ;->ᴵˊ()Lﹶˎ/ᵔᵢ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶˎ/ᵔᵢ;->ᵎﹶ()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v27, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lﹶˎ/ˉˆ;->ʾˋ(I)V

    goto :goto_35

    :cond_3e
    const/16 v27, 0x1

    :goto_35
    iget-boolean v4, v2, Lﹶˎ/ᵔᵢ;->ᵔٴ:Z

    if-eqz v4, :cond_41

    iget-boolean v4, v2, Lﹶˎ/ᵔᵢ;->ʻˋ:Z

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_36
    if-ltz v4, :cond_41

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶˎ/ᵔᵢ;

    iget-wide v5, v5, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v7, v2, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_3f

    goto :goto_37

    :cond_3f
    if-nez v5, :cond_40

    invoke-virtual {v0, v4}, Lﹶˎ/ˉˆ;->ʽ(I)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v0, v4}, Lﹶˎ/ˉˆ;->ʾˋ(I)V

    const/4 v13, 0x0

    iput-boolean v13, v2, Lﹶˎ/ᵔᵢ;->ʻˋ:Z

    goto :goto_37

    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    :cond_41
    :goto_37
    iput-object v2, v0, Lﹶˎ/ˉˆ;->יﹳ:Lﹶˎ/ᵔᵢ;

    iget-object v4, v2, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iput-object v4, v0, Lﹶˎ/ˉˆ;->ʻᵎ:Lʽⁱ/ﹳᐧ;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v3

    iget-object v4, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v5, v4

    const/4 v13, 0x0

    :goto_38
    if-ge v13, v5, :cond_42

    aget-object v6, v4, v13

    iget v7, v6, Lﹳᵢ/ᴵˑ;->ᵔﹳ:I

    iget v6, v6, Lﹳᵢ/ᴵˑ;->ʼᐧ:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_38

    :cond_42
    invoke-virtual {v3}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v3

    iput-object v0, v2, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    iput-object v3, v2, Lﹶˎ/ᵔᵢ;->ˈˏ:Lʼʻ/ᵎⁱ;

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_44

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v2, Lﹶˎ/ᵔᵢ;->ᵎˊ:I

    int-to-long v7, v7

    iput-wide v7, v6, Lﹳᵢ/ᴵˑ;->ʽʽ:J

    iget-boolean v7, v2, Lﹶˎ/ᵔᵢ;->ʻˋ:Z

    if-eqz v7, :cond_43

    const/4 v11, 0x1

    iput-boolean v11, v6, Lﹳᵢ/ᴵˑ;->ٴᵢ:Z

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_44
    iput-object v1, v0, Lﹶˎ/ˉˆ;->ﹳـ:Lᵢˋ/ˑﹳ;

    iget-object v2, v0, Lﹶˎ/ˉˆ;->ᵎⁱ:Lʻᴵ/יـ;

    iget v3, v1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    invoke-virtual {v2, v3}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v2

    invoke-virtual {v15, v1, v0, v2}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    const/16 v27, 0x1

    return v27

    :goto_3a
    return v29
.end method

.method public final ᴵˊ()Lﹶˎ/ᵔᵢ;
    .locals 2

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶˎ/ᵔᵢ;

    return-object v0
.end method

.method public final ᴵᵔ()V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lﹶˎ/ˉˆ;->ـﹶ:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Lﹶˎ/ˉˆ;->ᐧᴵ:Z

    if-nez v1, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v1, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_12

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    const/4 v2, 0x3

    const/4 v4, -0x1

    if-eqz v1, :cond_a

    iget v1, v1, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    new-array v5, v1, [I

    iput-object v5, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_9

    move v5, v3

    :goto_2
    iget-object v6, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v6

    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v7, v0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {v7, v4}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v7

    iget-object v7, v7, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v7, v7, v3

    iget-object v8, v6, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v9, v7, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v2, :cond_3

    invoke-static {v9}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    :cond_3
    invoke-static {v8, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget v6, v6, Lʽⁱ/ﹳᐧ;->ᵎˊ:I

    iget v7, v7, Lʽⁱ/ﹳᐧ;->ᵎˊ:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    iget-object v6, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    aput v5, v6, v4

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lﹶˎ/ˉˆ;->ʼˈ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lﹶˎ/ٴﹶ;

    invoke-virtual {v4}, Lﹶˎ/ٴﹶ;->ⁱˊ()V

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v1, v1

    const/4 v5, -0x2

    move v6, v3

    move v8, v4

    move v7, v5

    :goto_7
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ge v6, v1, :cond_10

    iget-object v11, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v11

    invoke-static {v11}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v11, v11, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v11}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v9, v10

    goto :goto_8

    :cond_b
    invoke-static {v11}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v11}, Lʽⁱ/ˉٴ;->ᵔʾ(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v9, v2

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    invoke-static {v9}, Lﹶˎ/ˉˆ;->ʽʽ(I)I

    move-result v10

    invoke-static {v7}, Lﹶˎ/ˉˆ;->ʽʽ(I)I

    move-result v11

    if-le v10, v11, :cond_e

    move v8, v6

    move v7, v9

    goto :goto_9

    :cond_e
    if-ne v9, v7, :cond_f

    if-eq v8, v4, :cond_f

    move v8, v4

    :cond_f
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    iget-object v2, v0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-object v2, v2, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    iget v5, v2, Lʽⁱ/ـˏ;->ﹳٴ:I

    iput v4, v0, Lﹶˎ/ˉˆ;->ʻˋ:I

    new-array v4, v1, [I

    iput-object v4, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    iget-object v6, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    new-array v4, v1, [Lʽⁱ/ـˏ;

    move v6, v3

    :goto_b
    if-ge v6, v1, :cond_18

    iget-object v11, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v11

    invoke-static {v11}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v12, v0, Lﹶˎ/ˉˆ;->ʾˋ:Ljava/lang/String;

    iget-object v13, v0, Lﹶˎ/ˉˆ;->ˊʻ:Lʽⁱ/ﹳᐧ;

    if-ne v6, v8, :cond_15

    new-array v14, v5, [Lʽⁱ/ﹳᐧ;

    move v15, v3

    :goto_c
    if-ge v15, v5, :cond_14

    iget-object v3, v2, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v3, v3, v15

    if-ne v7, v9, :cond_12

    if-eqz v13, :cond_12

    invoke-virtual {v3, v13}, Lʽⁱ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;)Lʽⁱ/ﹳᐧ;

    move-result-object v3

    :cond_12
    if-ne v5, v9, :cond_13

    invoke-virtual {v11, v3}, Lʽⁱ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;)Lʽⁱ/ﹳᐧ;

    move-result-object v3

    goto :goto_d

    :cond_13
    invoke-static {v3, v11, v9}, Lﹶˎ/ˉˆ;->ᵢˏ(Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;Z)Lʽⁱ/ﹳᐧ;

    move-result-object v3

    :goto_d
    aput-object v3, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_14
    new-instance v3, Lʽⁱ/ـˏ;

    invoke-direct {v3, v12, v14}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v3, v4, v6

    iput v6, v0, Lﹶˎ/ˉˆ;->ʻˋ:I

    const/4 v14, 0x0

    goto :goto_10

    :cond_15
    if-ne v7, v10, :cond_16

    iget-object v3, v11, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    const/4 v13, 0x0

    :goto_e
    const-string v3, ":muxed:"

    invoke-static {v12, v3}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v6, v8, :cond_17

    move v12, v6

    goto :goto_f

    :cond_17
    add-int/lit8 v12, v6, -0x1

    :goto_f
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Lʽⁱ/ـˏ;

    const/4 v14, 0x0

    invoke-static {v13, v11, v14}, Lﹶˎ/ˉˆ;->ᵢˏ(Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;Z)Lʽⁱ/ﹳᐧ;

    move-result-object v11

    new-array v13, v9, [Lʽⁱ/ﹳᐧ;

    aput-object v11, v13, v14

    invoke-direct {v12, v3, v13}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v12, v4, v6

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move v3, v14

    goto :goto_b

    :cond_18
    move v14, v3

    invoke-virtual {v0, v4}, Lﹶˎ/ˉˆ;->ʾᵎ([Lʽⁱ/ـˏ;)Lﹳᵢ/ʻᵎ;

    move-result-object v1

    iput-object v1, v0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ﹶᐧ:Ljava/util/Set;

    if-nez v1, :cond_19

    move v3, v9

    goto :goto_11

    :cond_19
    move v3, v14

    :goto_11
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, v0, Lﹶˎ/ˉˆ;->ﹶᐧ:Ljava/util/Set;

    iput-boolean v9, v0, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    invoke-virtual {v1}, Lᐧﹳ/ʽ;->ʽﹳ()V

    :cond_1a
    :goto_12
    return-void
.end method

.method public final ᵎⁱ(ZJ)Z
    .locals 11

    .prologue
    iput-wide p2, p0, Lﹶˎ/ˉˆ;->ـᵎ:J

    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p2, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    return v1

    :cond_0
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-boolean v0, v0, Lﹶˎ/ᵎﹶ;->ᵔﹳ:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶˎ/ᵔᵢ;

    iget-wide v6, v5, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    cmp-long v6, v6, p2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_1
    iget-boolean v0, p0, Lﹶˎ/ˉˆ;->ᐧᴵ:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length p1, p1

    move v0, v4

    :goto_2
    if-ge v0, p1, :cond_8

    iget-object v6, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v6, v6, v0

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Lﹶˎ/ᵔᵢ;->ﾞᴵ(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lﹳᵢ/ᴵˑ;->ٴᵢ(I)Z

    move-result v6

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ﾞʻ()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v9, v7, v9

    if-eqz v9, :cond_5

    cmp-long v7, p2, v7

    if-gez v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v1

    :goto_4
    invoke-virtual {v6, v7, p2, p3}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    move-result v6

    :goto_5
    if-nez v6, :cond_7

    iget-object v6, p0, Lﹶˎ/ˉˆ;->ᵎʻ:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lﹶˎ/ˉˆ;->ˑʼ:Z

    if-nez v6, :cond_7

    :cond_6
    move p1, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move p1, v1

    :goto_6
    if-eqz p1, :cond_9

    return v4

    :cond_9
    iput-wide p2, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    iput-boolean v4, p0, Lﹶˎ/ˉˆ;->ʾˊ:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lﹶˎ/ˉˆ;->ᐧᴵ:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length p3, p2

    :goto_7
    if-ge v4, p3, :cond_a

    aget-object v0, p2, v4

    invoke-virtual {v0}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lᵔⁱ/ˉʿ;->ﹳٴ()V

    return v1

    :cond_b
    iput-object v2, p1, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˉٴ()V

    return v1
.end method

.method public final ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 12

    .prologue
    check-cast p1, Lᵢˋ/ˑﹳ;

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶˎ/ˉˆ;->ﹳـ:Lᵢˋ/ˑﹳ;

    new-instance v2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵢˋ/ˑﹳ;->ʾˋ:J

    iget-object v0, p1, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ᵎⁱ:Lʻᴵ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iget-object v5, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v6, p1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v7, p1, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v8, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-wide v10, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v4, p0, Lﹶˎ/ˉˆ;->ᴵˊ:I

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳᐧ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lﹶˎ/ˉˆ;->ᴵʼ:I

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˉٴ()V

    :cond_1
    iget p1, p0, Lﹶˎ/ˉˆ;->ᴵʼ:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    invoke-virtual {p1, p0}, Lᐧﹳ/ʽ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    :cond_2
    return-void
.end method

.method public final ᵔᵢ()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶˎ/ˉˆ;->ˑ:Z

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˊˋ:Landroid/os/Handler;

    iget-object v1, p0, Lﹶˎ/ˉˆ;->ˋᵔ:Lﹶˎ/ﾞʻ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ᵔﹳ(II)Lˊﾞ/ٴᵢ;
    .locals 8

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lﹶˎ/ˉˆ;->ᴵˑ:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    aget-object v1, v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_9

    iget-boolean v1, p0, Lﹶˎ/ˉˆ;->ˑ:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmapped track with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HlsSampleStreamWrapper"

    invoke-static {p2, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lˊﾞ/ᵔʾ;

    invoke-direct {p1}, Lˊﾞ/ᵔʾ;-><init>()V

    return-object p1

    :cond_2
    array-length v1, v2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    new-instance v3, Lﹶˎ/ᵔʾ;

    iget-object v4, p0, Lﹶˎ/ˉˆ;->ˉٴ:Lⁱᴵ/ʼˎ;

    iget-object v5, p0, Lﹶˎ/ˉˆ;->ـˏ:Ljava/util/Map;

    iget-object v6, p0, Lﹶˎ/ˉˆ;->ᴵᵔ:Lᵔⁱ/ˑﹳ;

    iget-object v7, p0, Lﹶˎ/ˉˆ;->ٴᵢ:Lⁱᴵ/ﾞʻ;

    invoke-direct {v3, v6, v7, v4, v5}, Lﹶˎ/ᵔʾ;-><init>(Lᵔⁱ/ˑﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Ljava/util/Map;)V

    iget-wide v4, p0, Lﹶˎ/ˉˆ;->ـᵎ:J

    iput-wide v4, v3, Lﹳᵢ/ᴵˑ;->ˏי:J

    if-eqz v0, :cond_5

    iget-object v4, p0, Lﹶˎ/ˉˆ;->ˎᐧ:Lʽⁱ/ᵔʾ;

    iput-object v4, v3, Lﹶˎ/ᵔʾ;->ᵎⁱ:Lʽⁱ/ᵔʾ;

    iput-boolean v2, v3, Lﹳᵢ/ᴵˑ;->ᵢˏ:Z

    :cond_5
    iget-wide v4, p0, Lﹶˎ/ˉˆ;->ʼـ:J

    iget-wide v6, v3, Lﹳᵢ/ᴵˑ;->ˊʻ:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    iput-wide v4, v3, Lﹳᵢ/ᴵˑ;->ˊʻ:J

    iput-boolean v2, v3, Lﹳᵢ/ᴵˑ;->ᵢˏ:Z

    :cond_6
    iget-object v4, p0, Lﹶˎ/ˉˆ;->יﹳ:Lﹶˎ/ᵔᵢ;

    if-eqz v4, :cond_7

    iget v4, v4, Lﹶˎ/ᵔᵢ;->ᵎˊ:I

    int-to-long v4, v4

    iput-wide v4, v3, Lﹳᵢ/ᴵˑ;->ʽʽ:J

    :cond_7
    iput-object p0, v3, Lﹳᵢ/ᴵˑ;->ﾞᴵ:Lﹳᵢ/ˈⁱ;

    iget-object v4, p0, Lﹶˎ/ˉˆ;->ᴵˑ:[I

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lﹶˎ/ˉˆ;->ᴵˑ:[I

    aput p1, v4, v1

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    array-length v4, p1

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    array-length p1, p1

    aput-object v3, v2, p1

    check-cast v2, [Lﹶˎ/ᵔʾ;

    iput-object v2, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ᵎʻ:[Z

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ᵎʻ:[Z

    aput-boolean v0, p1, v1

    iget-boolean p1, p0, Lﹶˎ/ˉˆ;->ˑʼ:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lﹶˎ/ˉˆ;->ˑʼ:Z

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ˉـ:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ʿ:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->append(II)V

    invoke-static {p2}, Lﹶˎ/ˉˆ;->ʽʽ(I)I

    move-result p1

    iget v0, p0, Lﹶˎ/ˉˆ;->ᵎᵔ:I

    invoke-static {v0}, Lﹶˎ/ˉˆ;->ʽʽ(I)I

    move-result v0

    if-le p1, v0, :cond_8

    iput v1, p0, Lﹶˎ/ˉˆ;->ᐧﾞ:I

    iput p2, p0, Lﹶˎ/ˉˆ;->ᵎᵔ:I

    :cond_8
    iget-object p1, p0, Lﹶˎ/ˉˆ;->ٴﹳ:[Z

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ٴﹳ:[Z

    move-object v1, v3

    :cond_9
    const/4 p1, 0x5

    if-ne p2, p1, :cond_b

    iget-object p1, p0, Lﹶˎ/ˉˆ;->ʿᵢ:Lﹶˎ/ˉʿ;

    if-nez p1, :cond_a

    new-instance p1, Lﹶˎ/ˉʿ;

    iget p2, p0, Lﹶˎ/ˉˆ;->ᵔי:I

    invoke-direct {p1, v1, p2}, Lﹶˎ/ˉʿ;-><init>(Lﹶˎ/ᵔʾ;I)V

    iput-object p1, p0, Lﹶˎ/ˉˆ;->ʿᵢ:Lﹶˎ/ˉʿ;

    :cond_a
    iget-object p1, p0, Lﹶˎ/ˉˆ;->ʿᵢ:Lﹶˎ/ˉʿ;

    return-object p1

    :cond_b
    return-object v1
.end method

.method public final ﹳٴ()V
    .locals 1

    iget-boolean v0, p0, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹶˎ/ˉˆ;->ﹶᐧ:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ﾞʻ()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lﹶˎ/ˉˆ;->ʽᵔ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lﹶˎ/ˉˆ;->ʾˊ:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lﹶˎ/ˉˆ;->ᴵˊ()Lﹶˎ/ᵔᵢ;

    move-result-object v0

    iget-wide v0, v0, Lᵢˋ/ˑﹳ;->ˉٴ:J

    return-wide v0
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ˈٴ()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
