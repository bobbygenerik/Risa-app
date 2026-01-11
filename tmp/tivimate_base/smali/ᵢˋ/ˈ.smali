.class public final Lᵢˋ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ᵔﹳ;


# static fields
.field public static final ٴʼ:Lʽⁱ/ˏי;


# instance fields
.field public final ʽʽ:Lʽⁱ/ﹳᐧ;

.field public final ʾˋ:Lˊﾞ/ˉˆ;

.field public final ˈٴ:Landroid/util/SparseArray;

.field public ˉٴ:Lˊﾞ/ʾˋ;

.field public ˊʻ:Lـʾ/ᵔﹳ;

.field public ٴᵢ:J

.field public final ᴵˊ:I

.field public ᴵᵔ:Z

.field public ᵎⁱ:[Lʽⁱ/ﹳᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᵢˋ/ˈ;->ٴʼ:Lʽⁱ/ˏי;

    return-void
.end method

.method public constructor <init>(Lˊﾞ/ˉˆ;ILʽⁱ/ﹳᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵢˋ/ˈ;->ʾˋ:Lˊﾞ/ˉˆ;

    iput p2, p0, Lᵢˋ/ˈ;->ᴵˊ:I

    iput-object p3, p0, Lᵢˋ/ˈ;->ʽʽ:Lʽⁱ/ﹳᐧ;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lᵢˋ/ˈ;->ˈٴ:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final ˑﹳ(Lˊﾞ/ʾˋ;)V
    .locals 0

    iput-object p1, p0, Lᵢˋ/ˈ;->ˉٴ:Lˊﾞ/ʾˋ;

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵢˋ/ˈ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵢˋ/ʽ;

    iget-object v3, v3, Lᵢˋ/ʽ;->ˈ:Lʽⁱ/ﹳᐧ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lᵢˋ/ˈ;->ᵎⁱ:[Lʽⁱ/ﹳᐧ;

    return-void
.end method

.method public final ᵔﹳ(II)Lˊﾞ/ٴᵢ;
    .locals 5

    .prologue
    iget-object v0, p0, Lᵢˋ/ˈ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵢˋ/ʽ;

    if-nez v1, :cond_4

    iget-object v1, p0, Lᵢˋ/ˈ;->ᵎⁱ:[Lʽⁱ/ﹳᐧ;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v1, Lᵢˋ/ʽ;

    iget v2, p0, Lᵢˋ/ˈ;->ᴵˊ:I

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lᵢˋ/ˈ;->ʽʽ:Lʽⁱ/ﹳᐧ;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v1, p1, p2, v2}, Lᵢˋ/ʽ;-><init>(IILʽⁱ/ﹳᐧ;)V

    iget-object v2, p0, Lᵢˋ/ˈ;->ˊʻ:Lـʾ/ᵔﹳ;

    iget-wide v3, p0, Lᵢˋ/ˈ;->ٴᵢ:J

    if-nez v2, :cond_2

    iget-object p2, v1, Lᵢˋ/ʽ;->ʽ:Lˊﾞ/ᵔʾ;

    iput-object p2, v1, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    goto :goto_2

    :cond_2
    iput-wide v3, v1, Lᵢˋ/ʽ;->ﾞᴵ:J

    invoke-virtual {v2, p2}, Lـʾ/ᵔﹳ;->ᵢˏ(I)Lˊﾞ/ٴᵢ;

    move-result-object p2

    iput-object p2, v1, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    iget-object v2, v1, Lᵢˋ/ʽ;->ˈ:Lʽⁱ/ﹳᐧ;

    if-eqz v2, :cond_3

    invoke-interface {p2, v2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    :cond_3
    :goto_2
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public final ﹳٴ(Lـʾ/ᵔﹳ;JJ)V
    .locals 6

    .prologue
    iput-object p1, p0, Lᵢˋ/ˈ;->ˊʻ:Lـʾ/ᵔﹳ;

    iput-wide p4, p0, Lᵢˋ/ˈ;->ٴᵢ:J

    iget-boolean v0, p0, Lᵢˋ/ˈ;->ᴵᵔ:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lᵢˋ/ˈ;->ʾˋ:Lˊﾞ/ˉˆ;

    if-nez v0, :cond_1

    invoke-interface {v5, p0}, Lˊﾞ/ˉˆ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    invoke-interface {v5, v3, v4, p2, p3}, Lˊﾞ/ˉˆ;->ⁱˊ(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lᵢˋ/ˈ;->ᴵᵔ:Z

    return-void

    :cond_1
    cmp-long v0, p2, v1

    if-nez v0, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v5, v3, v4, p2, p3}, Lˊﾞ/ˉˆ;->ⁱˊ(JJ)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lᵢˋ/ˈ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lᵢˋ/ʽ;

    if-nez p1, :cond_3

    iget-object v0, p3, Lᵢˋ/ʽ;->ʽ:Lˊﾞ/ᵔʾ;

    iput-object v0, p3, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    goto :goto_1

    :cond_3
    iput-wide p4, p3, Lᵢˋ/ʽ;->ﾞᴵ:J

    iget v0, p3, Lᵢˋ/ʽ;->ﹳٴ:I

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ᵢˏ(I)Lˊﾞ/ٴᵢ;

    move-result-object v0

    iput-object v0, p3, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    iget-object p3, p3, Lᵢˋ/ʽ;->ˈ:Lʽⁱ/ﹳᐧ;

    if-eqz p3, :cond_4

    invoke-interface {v0, p3}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
