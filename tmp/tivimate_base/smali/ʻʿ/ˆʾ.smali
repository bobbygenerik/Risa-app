.class public final Lʻʿ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ᵔי;
.implements Lﹳᵢ/ٴᵢ;
.implements Lⁱᴵ/ˆʾ;


# instance fields
.field public final ʽʽ:Lʽⁱ/ˊˋ;

.field public final ʾˋ:Lᐧˎ/ˏי;

.field public final ˈٴ:Lﹳʽ/ᴵᵔ;

.field public ˉٴ:Lᐧˎ/ʻٴ;

.field public ˊʻ:Lᐧˎ/ˉʿ;

.field public ٴᵢ:Lʽⁱ/ᵔٴ;

.field public final ᴵˊ:Lʽⁱ/ˋᵔ;

.field public final ᴵᵔ:Landroid/util/SparseArray;

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Lᐧˎ/ˏי;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lʻʿ/ˆʾ;->ʾˋ:Lᐧˎ/ˏי;

    new-instance v0, Lᐧˎ/ˉʿ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    new-instance v2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    invoke-direct {v0, v1, p1, v2}, Lᐧˎ/ˉʿ;-><init>(Landroid/os/Looper;Lᐧˎ/ˏי;Lᐧˎ/ٴﹶ;)V

    iput-object v0, p0, Lʻʿ/ˆʾ;->ˊʻ:Lᐧˎ/ˉʿ;

    new-instance p1, Lʽⁱ/ˋᵔ;

    invoke-direct {p1}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object p1, p0, Lʻʿ/ˆʾ;->ᴵˊ:Lʽⁱ/ˋᵔ;

    new-instance v0, Lʽⁱ/ˊˋ;

    invoke-direct {v0}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object v0, p0, Lʻʿ/ˆʾ;->ʽʽ:Lʽⁱ/ˊˋ;

    new-instance v0, Lﹳʽ/ᴵᵔ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iput-object p1, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    sget-object p1, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    iput-object p1, v0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lʻʿ/ˆʾ;->ᴵᵔ:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final ʻٴ(F)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v1, 0x16

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʼʼ(I)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v1, 0x15

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʼˈ(Z)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʼˎ(ILﹳᵢ/ᵢˏ;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 v0, 0x16

    invoke-direct {p2, v0}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʼᐧ(Lʽⁱ/ˉـ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x13

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʽ(ILﹳᵢ/ᵢˏ;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʽʽ(I)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʽﹳ(IZ)V
    .locals 1

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v0, 0xf

    invoke-direct {p2, v0}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʾˋ(ILﹳᵢ/ᵢˏ;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 v0, 0x12

    invoke-direct {p2, v0}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ʾᵎ(Lʽⁱ/ٴʼ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˆʾ(I)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˆﾞ(ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʻʿ/ˆʾ;->ᵎⁱ:Z

    :cond_0
    iget-object v0, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v2, v1, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʼʻ/ᵎⁱ;

    iget-object v3, v1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lﹳᵢ/ᵢˏ;

    iget-object v4, v1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lʽⁱ/ˋᵔ;

    invoke-static {v0, v2, v3, v4}, Lﹳʽ/ᴵᵔ;->ˆʾ(Lʽⁱ/ᵔٴ;Lʼʻ/ᵎⁱ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ˋᵔ;)Lﹳᵢ/ᵢˏ;

    move-result-object v0

    iput-object v0, v1, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lʻʿ/ˑﹳ;

    invoke-direct {v1, v0, p1, p2, p3}, Lʻʿ/ˑﹳ;-><init>(Lʻʿ/ﹳٴ;ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˈ(I)V
    .locals 4

    iget-object p1, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v1, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʼʻ/ᵎⁱ;

    iget-object v2, v0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵢˏ;

    iget-object v3, v0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lʽⁱ/ˋᵔ;

    invoke-static {p1, v1, v2, v3}, Lﹳʽ/ᴵᵔ;->ˆʾ(Lʽⁱ/ᵔٴ;Lʼʻ/ᵎⁱ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ˋᵔ;)Lﹳᵢ/ᵢˏ;

    move-result-object v1

    iput-object v1, v0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lⁱי/ʼʼ;

    invoke-virtual {p1}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lﹳʽ/ᴵᵔ;->ʽﹳ(Lʽⁱ/ʼˈ;)V

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˈʿ(Lʽⁱ/ᴵᵔ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v1, 0xe

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˈٴ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 p3, 0x1b

    invoke-direct {p2, p3}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˉʿ(Z)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˉˆ(Z)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lʻʿ/ﾞᴵ;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v1, 0x17

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˉٴ(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    .prologue
    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->ˉٴ:Lﹳᵢ/ᵢˏ;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object v0

    :goto_0
    new-instance v1, Lʻʿ/ˈ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lʻʿ/ˈ;-><init>(Lʻʿ/ﹳٴ;Ljava/lang/Object;I)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˊʻ(ILﹳᵢ/ᵢˏ;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 v0, 0x17

    invoke-direct {p2, v0}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˊˋ()Lʻʿ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;
    .locals 1

    .prologue
    iget-object v0, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ᴵʼ;

    invoke-virtual {v0, p2}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽⁱ/ʼˈ;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    invoke-virtual {p0, v0, p1, p2}, Lʻʿ/ˆʾ;->ᵔי(Lʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast p2, Lⁱי/ʼʼ;

    invoke-virtual {p2}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object p2

    invoke-virtual {p2}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lʻʿ/ˆʾ;->ᵔי(Lʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי(IZ)V
    .locals 1

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˑٴ(Lⁱˉ/ʽ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x1b

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˑﹳ(Lʽⁱ/ᵎⁱ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final יـ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ʽ;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, p3}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ـˆ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V
    .locals 1

    iget-object v0, p0, Lʻʿ/ˆʾ;->ᴵᵔ:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lʻʿ/ˆʾ;->ˊʻ:Lᐧˎ/ˉʿ;

    invoke-virtual {p1, p2, p3}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ٴʼ()Lʻʿ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ٴᵢ(Lʽⁱ/ᵎˊ;)V
    .locals 0

    return-void
.end method

.method public final ٴﹶ(Lʽⁱ/ʿᵢ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᴵˊ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p2

    new-instance p1, Lʻʿ/ˈ;

    invoke-direct/range {p1 .. p6}, Lʻʿ/ˈ;-><init>(Lʻʿ/ﹳٴ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p2, p3, p1}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᴵᵔ(ILﹳᵢ/ᵢˏ;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᵎˊ(II)V
    .locals 1

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v0, 0x1a

    invoke-direct {p2, v0}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v0, 0x18

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᵎⁱ(Z)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᵎﹶ(Lʽⁱ/ᴵˊ;I)V
    .locals 1

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 v0, 0x1b

    invoke-direct {p2, v0}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᵔʾ()V
    .locals 0

    return-void
.end method

.method public final ᵔי(Lʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    iget-object v1, v0, Lʻʿ/ˆʾ;->ʾˋ:Lᐧˎ/ˏי;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v1

    invoke-virtual {v4, v1}, Lʽⁱ/ʼˈ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_5

    iget-object v1, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ﾞˋ()I

    move-result v1

    iget v9, v6, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˈـ()I

    move-result v1

    iget v9, v6, Lﹳᵢ/ᵢˏ;->ʽ:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˑˆ()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v7, v1, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-virtual {v1, v7}, Lⁱי/ʼʼ;->יˉ(Lⁱי/ᴵˑ;)J

    move-result-wide v7

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lʻʿ/ˆʾ;->ʽʽ:Lʽⁱ/ˊˋ;

    invoke-virtual {v4, v5, v1, v7, v8}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v1

    iget-wide v7, v1, Lʽⁱ/ˊˋ;->ﾞʻ:J

    invoke-static {v7, v8}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v7

    :cond_5
    :goto_2
    iget-object v1, v0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v1, v1, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lﹳᵢ/ᵢˏ;

    new-instance v1, Lʻʿ/ﹳٴ;

    iget-object v9, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v9, Lⁱי/ʼʼ;

    invoke-virtual {v9}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v9

    iget-object v10, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v10, Lⁱי/ʼʼ;

    invoke-virtual {v10}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v10

    iget-object v12, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v12, Lⁱי/ʼʼ;

    invoke-virtual {v12}, Lⁱי/ʼʼ;->ˑˆ()J

    move-result-wide v12

    iget-object v14, v0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v14, Lⁱי/ʼʼ;

    invoke-virtual {v14}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v14, v14, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-wide v14, v14, Lⁱי/ᴵˑ;->ﹳᐧ:J

    invoke-static {v14, v15}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v14

    invoke-direct/range {v1 .. v15}, Lʻʿ/ﹳٴ;-><init>(JLʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;JLʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;JJ)V

    return-object v1
.end method

.method public final ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;
    .locals 3

    .prologue
    iget-object v0, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v1, v1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʼʻ/ᴵʼ;

    invoke-virtual {v1, p1}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽⁱ/ʼˈ;

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v2, p0, Lʻʿ/ˆʾ;->ᴵˊ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v0, v2}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v0

    iget v0, v0, Lʽⁱ/ˋᵔ;->ʽ:I

    invoke-virtual {p0, v1, v0, p1}, Lʻʿ/ˆʾ;->ᵔי(Lʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast p1, Lⁱי/ʼʼ;

    invoke-virtual {p1}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result p1

    iget-object v1, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v1

    invoke-virtual {v1}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lʻʿ/ˆʾ;->ᵔי(Lʽⁱ/ʼˈ;ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔᵢ(Lʽⁱ/ٴᵢ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x1c

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᵔﹳ(Lʽⁱ/ˑﹳ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᵢˏ(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    .prologue
    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->ˉٴ:Lﹳᵢ/ᵢˏ;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    :goto_0
    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ⁱˊ(I)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ﹳـ(Lⁱי/ʼʼ;Landroid/os/Looper;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lʻʿ/ˆʾ;->ٴᵢ:Lʽⁱ/ᵔٴ;

    const/4 v0, 0x0

    iget-object v1, p0, Lʻʿ/ˆʾ;->ʾˋ:Lᐧˎ/ˏי;

    invoke-virtual {v1, p2, v0}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    move-result-object v0

    iput-object v0, p0, Lʻʿ/ˆʾ;->ˉٴ:Lᐧˎ/ʻٴ;

    iget-object v0, p0, Lʻʿ/ˆʾ;->ˊʻ:Lᐧˎ/ˉʿ;

    new-instance v5, Lʻʿ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1, p1}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, v0, Lᐧˎ/ˉʿ;->ʽ:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lᐧˎ/ˏי;

    new-instance v1, Lᐧˎ/ˉʿ;

    iget-object p1, v0, Lᐧˎ/ˉʿ;->ﾞᴵ:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-boolean v6, v0, Lᐧˎ/ˉʿ;->ⁱˊ:Z

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lᐧˎ/ˉʿ;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lᐧˎ/ˏי;Lᐧˎ/ٴﹶ;Z)V

    iput-object v1, p0, Lʻʿ/ˆʾ;->ˊʻ:Lᐧˎ/ˉʿ;

    return-void
.end method

.method public final ﹳٴ(Lʽⁱ/ˏᵢ;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lʻʿ/ᵎﹶ;

    invoke-direct {v1, v0, p1}, Lʻʿ/ᵎﹶ;-><init>(Lʻʿ/ﹳٴ;Lʽⁱ/ˏᵢ;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ﹳᐧ(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance v0, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v1, 0x1b

    invoke-virtual {p0, p1, v1, v0}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ﾞʻ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ﾞᴵ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˆʾ;->ˋᵔ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object p1

    new-instance p2, Lʻʿ/ﾞᴵ;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method
