.class public final Lٴᴵ/ﾞʻ;
.super Lٴᴵ/ˉʿ;
.source "SourceFile"


# instance fields
.field public final ˊʻ:Lٴᴵ/ˆʾ;

.field public final ٴᵢ:Lˉˆ/ʿ;


# direct methods
.method public constructor <init>(Lʽⁱ/ﹳᐧ;Lʼʻ/ᵎⁱ;Lٴᴵ/ﹳᐧ;Ljava/util/ArrayList;)V
    .locals 6

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lٴᴵ/ˉʿ;-><init>(Lʽⁱ/ﹳᐧ;Ljava/util/List;Lٴᴵ/יـ;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lٴᴵ/ⁱˊ;

    iget-object p1, p1, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    iget-wide v3, p3, Lٴᴵ/ﹳᐧ;->ˑﹳ:J

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lٴᴵ/ˆʾ;

    const/4 v5, 0x0

    iget-wide v1, p3, Lٴᴵ/ﹳᐧ;->ˈ:J

    invoke-direct/range {v0 .. v5}, Lٴᴵ/ˆʾ;-><init>(JJLjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lٴᴵ/ﾞʻ;->ˊʻ:Lٴᴵ/ˆʾ;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lˉˆ/ʿ;

    new-instance v0, Lٴᴵ/ˆʾ;

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lٴᴵ/ˆʾ;-><init>(JJLjava/lang/String;)V

    const/16 p1, 0x19

    invoke-direct {p2, p1, v0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    :goto_1
    iput-object p2, p0, Lٴᴵ/ﾞʻ;->ٴᵢ:Lˉˆ/ʿ;

    return-void
.end method


# virtual methods
.method public final ˈ()Lـᵢ/ʼˎ;
    .locals 1

    iget-object v0, p0, Lٴᴵ/ﾞʻ;->ٴᵢ:Lˉˆ/ʿ;

    return-object v0
.end method

.method public final ˑﹳ()Lٴᴵ/ˆʾ;
    .locals 1

    iget-object v0, p0, Lٴᴵ/ﾞʻ;->ˊʻ:Lٴᴵ/ˆʾ;

    return-object v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
