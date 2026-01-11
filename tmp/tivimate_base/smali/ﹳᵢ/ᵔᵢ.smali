.class public final Lﹳᵢ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ٴᵢ;
.implements Lⁱᴵ/ˆʾ;


# instance fields
.field public ʽʽ:Lⁱᴵ/ʼˎ;

.field public final ʾˋ:Ljava/lang/Object;

.field public final synthetic ˈٴ:Lﹳᵢ/ˆʾ;

.field public ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ˆʾ;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᵔᵢ;->ˈٴ:Lﹳᵢ/ˆʾ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lﹳᵢ/ﹳٴ;->ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v1

    iput-object v1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object p1, p1, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    new-instance v1, Lⁱᴵ/ʼˎ;

    iget-object p1, p1, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lⁱᴵ/ʼˎ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    iput-object v1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    iput-object p2, p0, Lﹳᵢ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʼˎ(ILﹳᵢ/ᵢˏ;)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    invoke-virtual {p1}, Lⁱᴵ/ʼˎ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final ʽ(ILﹳᵢ/ᵢˏ;I)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    invoke-virtual {p1, p3}, Lⁱᴵ/ʼˎ;->ʽ(I)V

    :cond_0
    return-void
.end method

.method public final ʾˋ(ILﹳᵢ/ᵢˏ;)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    invoke-virtual {p1}, Lⁱᴵ/ʼˎ;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public final ˈٴ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p0, p4, p2}, Lﹳᵢ/ᵔᵢ;->ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lﹳᵢ/ʽʽ;

    invoke-direct {p4, p1, p3, p2, p5}, Lﹳᵢ/ʽʽ;-><init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼˎ(Lᐧˎ/ﾞᴵ;)V

    :cond_0
    return-void
.end method

.method public final ˊʻ(ILﹳᵢ/ᵢˏ;)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    invoke-virtual {p1}, Lⁱᴵ/ʼˎ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final יـ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p0, p3, p2}, Lﹳᵢ/ᵔᵢ;->ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lʻʿ/ʽ;

    const/16 v0, 0xe

    invoke-direct {p3, p1, v0, p2}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼˎ(Lᐧˎ/ﾞᴵ;)V

    :cond_0
    return-void
.end method

.method public final ـˆ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p0, p3, p2}, Lﹳᵢ/ᵔᵢ;->ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lˈᵔ/ﹳٴ;

    const/4 v1, 0x6

    invoke-direct {v0, p1, p3, p2, v1}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼˎ(Lᐧˎ/ﾞᴵ;)V

    :cond_0
    return-void
.end method

.method public final ᴵˊ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V
    .locals 6

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p0, p4, p2}, Lﹳᵢ/ᵔᵢ;->ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lﹳᵢ/ᴵᵔ;

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lﹳᵢ/ᴵᵔ;-><init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼˎ(Lᐧˎ/ﾞᴵ;)V

    :cond_0
    return-void
.end method

.method public final ᴵᵔ(ILﹳᵢ/ᵢˏ;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    invoke-virtual {p1, p3}, Lⁱᴵ/ʼˎ;->ˈ(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;
    .locals 13

    .prologue
    iget-wide v0, p1, Lˎʾ/ᵎﹶ;->ˈ:J

    iget-object p2, p0, Lﹳᵢ/ᵔᵢ;->ˈٴ:Lﹳᵢ/ˆʾ;

    iget-object v2, p0, Lﹳᵢ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v2}, Lﹳᵢ/ˆʾ;->ʾˋ(JLjava/lang/Object;)J

    move-result-wide v9

    iget-wide v3, p1, Lˎʾ/ᵎﹶ;->ˑﹳ:J

    invoke-virtual {p2, v3, v4, v2}, Lﹳᵢ/ˆʾ;->ʾˋ(JLjava/lang/Object;)J

    move-result-wide v11

    cmp-long p2, v9, v0

    if-nez p2, :cond_0

    cmp-long p2, v11, v3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance v3, Lˎʾ/ᵎﹶ;

    iget v4, p1, Lˎʾ/ᵎﹶ;->ﹳٴ:I

    iget v5, p1, Lˎʾ/ᵎﹶ;->ⁱˊ:I

    iget-object p2, p1, Lˎʾ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Lʽⁱ/ﹳᐧ;

    iget v7, p1, Lˎʾ/ᵎﹶ;->ʽ:I

    iget-object v8, p1, Lˎʾ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Object;

    invoke-direct/range {v3 .. v12}, Lˎʾ/ᵎﹶ;-><init>(IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    return-object v3
.end method

.method public final ﹳٴ(ILﹳᵢ/ᵢˏ;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳᵢ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    iget-object v1, p0, Lﹳᵢ/ᵔᵢ;->ˈٴ:Lﹳᵢ/ˆʾ;

    if-eqz p2, :cond_0

    invoke-virtual {v1, v0, p2}, Lﹳᵢ/ˆʾ;->ᵢˏ(Ljava/lang/Object;Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-virtual {v1, p1, v0}, Lﹳᵢ/ˆʾ;->ᴵˊ(ILjava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    if-ne v2, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ᵢˏ;

    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v1, Lﹳᵢ/ﹳٴ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    iput-object v2, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    :cond_3
    iget-object v0, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    iget v2, v0, Lⁱᴵ/ʼˎ;->ﹳٴ:I

    if-ne v2, p1, :cond_4

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v1, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    new-instance v1, Lⁱᴵ/ʼˎ;

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0, p1, p2}, Lⁱᴵ/ʼˎ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    iput-object v1, p0, Lﹳᵢ/ᵔᵢ;->ʽʽ:Lⁱᴵ/ʼˎ;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final ﾞʻ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p0, p4, p2}, Lﹳᵢ/ᵔᵢ;->ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lﹳᵢ/ˈٴ;

    const/4 v0, 0x1

    invoke-direct {p4, p1, p3, p2, v0}, Lﹳᵢ/ˈٴ;-><init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼˎ(Lᐧˎ/ﾞᴵ;)V

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔᵢ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ᵔᵢ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p0, p4, p2}, Lﹳᵢ/ᵔᵢ;->ⁱˊ(Lˎʾ/ᵎﹶ;Lﹳᵢ/ᵢˏ;)Lˎʾ/ᵎﹶ;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lﹳᵢ/ˈٴ;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Lﹳᵢ/ˈٴ;-><init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼˎ(Lᐧˎ/ﾞᴵ;)V

    :cond_0
    return-void
.end method
