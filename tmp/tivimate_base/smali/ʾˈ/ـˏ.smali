.class public final Lʾˈ/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾˈ/ˋᵔ;


# static fields
.field public static final synthetic ᵎﹶ:I

.field public static final ﾞᴵ:D


# instance fields
.field public final ʽ:Lᵎʽ/ˆʾ;

.field public final ˈ:Lʾˈ/ﾞʻ;

.field public final ˑﹳ:Lˈי/ᵔᵢ;

.field public final ⁱˊ:Lʽʼ/ˑﹳ;

.field public final ﹳٴ:Lˉᵎ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sput-wide v0, Lʾˈ/ـˏ;->ﾞᴵ:D

    return-void
.end method

.method public constructor <init>(Lˉᵎ/ᵎﹶ;Lʽʼ/ˑﹳ;Lᵎʽ/ˆʾ;Lʾˈ/ﾞʻ;Lˈי/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ـˏ;->ﹳٴ:Lˉᵎ/ᵎﹶ;

    iput-object p2, p0, Lʾˈ/ـˏ;->ⁱˊ:Lʽʼ/ˑﹳ;

    iput-object p3, p0, Lʾˈ/ـˏ;->ʽ:Lᵎʽ/ˆʾ;

    iput-object p4, p0, Lʾˈ/ـˏ;->ˈ:Lʾˈ/ﾞʻ;

    iput-object p5, p0, Lʾˈ/ـˏ;->ˑﹳ:Lˈי/ᵔᵢ;

    return-void
.end method

.method public static final ﹳٴ(Lʾˈ/ـˏ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    instance-of v0, p1, Lʾˈ/ʼˈ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lʾˈ/ʼˈ;

    iget v1, v0, Lʾˈ/ʼˈ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʾˈ/ʼˈ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʾˈ/ʼˈ;

    invoke-direct {v0, p0, p1}, Lʾˈ/ʼˈ;-><init>(Lʾˈ/ـˏ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lʾˈ/ʼˈ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lʾˈ/ʼˈ;->ٴᵢ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "FirebaseSessions"

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lʾˈ/ʼˈ;->ˈٴ:Lʾˈ/ـˏ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lʾˈ/ʼˈ;->ˈٴ:Lʾˈ/ـˏ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    sget-object p1, Lˉᴵ/ʽ;->ﹳٴ:Lˉᴵ/ʽ;

    iput-object p0, v0, Lʾˈ/ʼˈ;->ˈٴ:Lʾˈ/ـˏ;

    iput v3, v0, Lʾˈ/ʼˈ;->ٴᵢ:I

    invoke-virtual {p1, v0}, Lˉᴵ/ʽ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳˎ/ʼˎ;

    iget-object v1, v1, Lﹳˎ/ʼˎ;->ﹳٴ:Lʼٴ/ٴᵢ;

    invoke-virtual {v1}, Lʼٴ/ٴᵢ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lʾˈ/ـˏ;->ʽ:Lᵎʽ/ˆʾ;

    iput-object p0, v0, Lʾˈ/ʼˈ;->ˈٴ:Lʾˈ/ـˏ;

    iput v2, v0, Lʾˈ/ʼˈ;->ٴᵢ:I

    invoke-virtual {p1, v0}, Lᵎʽ/ˆʾ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_7

    :goto_2
    return-object v5

    :cond_7
    :goto_3
    iget-object p1, p0, Lʾˈ/ـˏ;->ʽ:Lᵎʽ/ˆʾ;

    iget-object v0, p1, Lᵎʽ/ˆʾ;->ﹳٴ:Lᵎʽ/ˉˆ;

    invoke-interface {v0}, Lᵎʽ/ˉˆ;->ﹳٴ()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4

    :cond_8
    iget-object p1, p1, Lᵎʽ/ˆʾ;->ⁱˊ:Lᵎʽ/ˉˆ;

    invoke-interface {p1}, Lᵎʽ/ˉˆ;->ﹳٴ()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_9
    :goto_4
    if-nez v3, :cond_a

    const-string p0, "Sessions SDK disabled through settings API. Events will not be sent."

    nop

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    iget-object p0, p0, Lʾˈ/ـˏ;->ʽ:Lᵎʽ/ˆʾ;

    invoke-virtual {p0}, Lᵎʽ/ˆʾ;->ﹳٴ()D

    move-result-wide p0

    sget-wide v0, Lʾˈ/ـˏ;->ﾞᴵ:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    const-string p0, "Sessions SDK has dropped this session due to sampling."

    nop

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_c
    :goto_5
    const-string p0, "Sessions SDK disabled through data collection. Events will not be sent."

    nop

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
