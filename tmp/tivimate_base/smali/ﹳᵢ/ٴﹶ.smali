.class public final Lﹳᵢ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʿᵢ;


# instance fields
.field public final ʾˋ:Lﹳᵢ/ʿᵢ;

.field public final ᴵˊ:Lʼʻ/ᵎⁱ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ʿᵢ;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-static {p2}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/ٴﹶ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʿᵢ;->ʻٴ(J)V

    return-void
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˉˆ()J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v0, p1}, Lﹳᵢ/ʿᵢ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result p1

    return p1
.end method

.method public final ﾞʻ()J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/ٴﹶ;->ʾˋ:Lﹳᵢ/ʿᵢ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ﾞʻ()J

    move-result-wide v0

    return-wide v0
.end method
