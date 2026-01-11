.class public final Lˊˎ/ˑﹳ;
.super Lˊˎ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public ˈٴ:[I

.field public ˉٴ:[[B

.field public ˊʻ:[D

.field public ٴᵢ:[Ljava/lang/String;

.field public ᴵᵔ:[J

.field public ᵎⁱ:Landroid/database/Cursor;


# direct methods
.method public static ﹳᐧ(Landroid/database/Cursor;I)V
    .locals 0

    .prologue
    if-ltz p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x19

    const-string p1, "column index out of range"

    invoke-static {p0, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˊˎ/ᵎﹶ;->ʽʽ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lˊˎ/ˑﹳ;->ᴵᵔ:[J

    new-array v1, v0, [D

    iput-object v1, p0, Lˊˎ/ˑﹳ;->ˊʻ:[D

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lˊˎ/ˑﹳ;->ٴᵢ:[Ljava/lang/String;

    new-array v0, v0, [[B

    iput-object v0, p0, Lˊˎ/ˑﹳ;->ˉٴ:[[B

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->reset()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊˎ/ᵎﹶ;->ʽʽ:Z

    return-void
.end method

.method public final getBlob(I)[B
    .locals 1

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ـˆ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Lˊˎ/ˑﹳ;->ﹳᐧ(Landroid/database/Cursor;I)V

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final getColumnCount()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ˉˆ()V

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ˉˆ()V

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lˊˎ/ˑﹳ;->ﹳᐧ(Landroid/database/Cursor;I)V

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDouble(I)D
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ـˆ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Lˊˎ/ˑﹳ;->ﹳᐧ(Landroid/database/Cursor;I)V

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ـˆ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Lˊˎ/ˑﹳ;->ﹳᐧ(Landroid/database/Cursor;I)V

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isNull(I)Z
    .locals 1

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ـˆ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Lˊˎ/ˑﹳ;->ﹳᐧ(Landroid/database/Cursor;I)V

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public final reset()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    return-void
.end method

.method public final ˉˆ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lˊˎ/ᵎﹶ;->ʾˋ:Lʼﹶ/ﹳٴ;

    invoke-interface {v1, v0}, Lʼﹶ/ﹳٴ;->ʽʽ(Lʼﹶ/ﾞᴵ;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public final ˑٴ(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lˊˎ/ˑﹳ;->ᵎﹶ(II)V

    iget-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    aput v0, v1, p1

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ٴᵢ:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public final ـˆ()Landroid/database/Cursor;
    .locals 2

    .prologue
    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    const-string v1, "no row"

    invoke-static {v0, v1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final ᵎᵔ()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ˉˆ()V

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᵎⁱ:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎﹶ(II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    add-int/2addr p2, v0

    iget-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    array-length v2, v1

    if-ge v2, p2, :cond_0

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lˊˎ/ˑﹳ;->ˉٴ:[[B

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lˊˎ/ˑﹳ;->ˉٴ:[[B

    return-void

    :cond_2
    iget-object p1, p0, Lˊˎ/ˑﹳ;->ٴᵢ:[Ljava/lang/String;

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lˊˎ/ˑﹳ;->ٴᵢ:[Ljava/lang/String;

    return-void

    :cond_3
    iget-object p1, p0, Lˊˎ/ˑﹳ;->ˊʻ:[D

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lˊˎ/ˑﹳ;->ˊʻ:[D

    return-void

    :cond_4
    iget-object p1, p0, Lˊˎ/ˑﹳ;->ᴵᵔ:[J

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lˊˎ/ˑﹳ;->ᴵᵔ:[J

    :cond_5
    :goto_0
    return-void
.end method

.method public final ᵔᵢ(I[B)V
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lˊˎ/ˑﹳ;->ᵎﹶ(II)V

    iget-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    aput v0, v1, p1

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ˉٴ:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public final ᵔﹳ(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    invoke-virtual {p0}, Lˊˎ/ˑﹳ;->ـˆ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Lˊˎ/ˑﹳ;->ﹳᐧ(Landroid/database/Cursor;I)V

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ(ID)V
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lˊˎ/ˑﹳ;->ᵎﹶ(II)V

    iget-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    aput v0, v1, p1

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ˊʻ:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public final ﹳٴ(I)V
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lˊˎ/ˑﹳ;->ᵎﹶ(II)V

    iget-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    aput v0, v1, p1

    return-void
.end method

.method public final ﾞᴵ(IJ)V
    .locals 2

    invoke-virtual {p0}, Lˊˎ/ᵎﹶ;->ʽ()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lˊˎ/ˑﹳ;->ᵎﹶ(II)V

    iget-object v1, p0, Lˊˎ/ˑﹳ;->ˈٴ:[I

    aput v0, v1, p1

    iget-object v0, p0, Lˊˎ/ˑﹳ;->ᴵᵔ:[J

    aput-wide p2, v0, p1

    return-void
.end method
