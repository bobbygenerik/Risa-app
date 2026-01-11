.class public final Lʽⁱ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/List;

.field public final ˈ:Lʼʻ/ᵎⁱ;

.field public final ˑﹳ:J

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x7

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/bumptech/glide/ʽ;Ljava/util/List;Lʼʻ/ᵎⁱ;J)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    invoke-static {p2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    iput-object p4, p0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    iput-object p5, p0, Lʽⁱ/ʼʼ;->ˈ:Lʼʻ/ᵎⁱ;

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p5}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lʽⁱ/ʾˋ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lʽⁱ/ʾˋ;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p3}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    iput-wide p6, p0, Lʽⁱ/ʼʼ;->ˑﹳ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lʽⁱ/ʼʼ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lʽⁱ/ʼʼ;

    iget-object v0, p0, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    iget-object v1, p1, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p1, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    iget-object v1, p1, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ʼʼ;->ˈ:Lʼʻ/ᵎⁱ;

    iget-object v1, p1, Lʽⁱ/ʼʼ;->ˈ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0, v1}, Lʼʻ/ᵎⁱ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lʽⁱ/ʼʼ;->ˑﹳ:J

    iget-wide v2, p1, Lʽⁱ/ʼʼ;->ˑﹳ:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    iget-object v0, p0, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    iget-object v1, p0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v0, p0, Lʽⁱ/ʼʼ;->ˈ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Lʼʻ/ᵎⁱ;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const-wide/16 v1, 0x1f

    int-to-long v3, v0

    mul-long/2addr v3, v1

    iget-wide v0, p0, Lʽⁱ/ʼʼ;->ˑﹳ:J

    add-long/2addr v3, v0

    long-to-int v0, v3

    return v0
.end method
