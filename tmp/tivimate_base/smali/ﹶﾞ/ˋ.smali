.class public final Lﹶﾞ/ˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lcom/google/android/gms/internal/measurement/ʿʽ;

.field public final ˈ:Ljava/util/BitSet;

.field public final ˑﹳ:Ljava/util/BitSet;

.field public final ᵎﹶ:Lיـ/ˑﹳ;

.field public final synthetic ᵔᵢ:Lﹶﾞ/ʽ;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Lיـ/ˑﹳ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʽ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ᵔᵢ:Lﹶﾞ/ʽ;

    iput-object p2, p0, Lﹶﾞ/ˋ;->ﹳٴ:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹶﾞ/ˋ;->ⁱˊ:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ˈ:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ˑﹳ:Ljava/util/BitSet;

    new-instance p1, Lיـ/ˑﹳ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ﾞᴵ:Lיـ/ˑﹳ;

    new-instance p1, Lיـ/ˑﹳ;

    invoke-direct {p1, p2}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ᵎﹶ:Lיـ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ʽ;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ʿʽ;Ljava/util/BitSet;Ljava/util/BitSet;Lיـ/ˑﹳ;Lיـ/ˑﹳ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ᵔᵢ:Lﹶﾞ/ʽ;

    iput-object p2, p0, Lﹶﾞ/ˋ;->ﹳٴ:Ljava/lang/String;

    iput-object p4, p0, Lﹶﾞ/ˋ;->ˈ:Ljava/util/BitSet;

    iput-object p5, p0, Lﹶﾞ/ˋ;->ˑﹳ:Ljava/util/BitSet;

    iput-object p6, p0, Lﹶﾞ/ˋ;->ﾞᴵ:Lיـ/ˑﹳ;

    new-instance p1, Lיـ/ˑﹳ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹶﾞ/ˋ;->ᵎﹶ:Lיـ/ˑﹳ;

    invoke-virtual {p7}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lיـ/ⁱˊ;

    invoke-virtual {p1}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p7, p4}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p6, p0, Lﹶﾞ/ˋ;->ᵎﹶ:Lיـ/ˑﹳ;

    invoke-virtual {p6, p4, p5}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lﹶﾞ/ˋ;->ⁱˊ:Z

    iput-object p3, p0, Lﹶﾞ/ˋ;->ʽ:Lcom/google/android/gms/internal/measurement/ʿʽ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(I)Lcom/google/android/gms/internal/measurement/ˎʾ;
    .locals 8

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˎʾ;->ـˆ()Lcom/google/android/gms/internal/measurement/ˈـ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ˎʾ;->ʾᵎ(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    iget-boolean v1, p0, Lﹶﾞ/ˋ;->ⁱˊ:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ˎʾ;->ʾˋ(Z)V

    iget-object p1, p0, Lﹶﾞ/ˋ;->ʽ:Lcom/google/android/gms/internal/measurement/ʿʽ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ˎʾ;->ᵢˏ(Lcom/google/android/gms/internal/measurement/ʿʽ;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ʾᵎ()Lcom/google/android/gms/internal/measurement/ᵢʻ;

    move-result-object p1

    iget-object v1, p0, Lﹶﾞ/ˋ;->ˈ:Ljava/util/BitSet;

    invoke-static {v1}, Lﹶﾞ/ʿ;->ˉʽ(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ʿʽ;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ᴵˊ(Ljava/util/List;)V

    iget-object v1, p0, Lﹶﾞ/ˋ;->ˑﹳ:Ljava/util/BitSet;

    invoke-static {v1}, Lﹶﾞ/ʿ;->ˉʽ(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ʿʽ;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ᵢˏ(Ljava/lang/Iterable;)V

    iget-object v1, p0, Lﹶﾞ/ˋ;->ﾞᴵ:Lיـ/ˑﹳ;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Lיـ/ⁱˊ;

    invoke-virtual {v3}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ﹶʽ;->ˏי()Lcom/google/android/gms/internal/measurement/ˋـ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/ﹶʽ;->ʽﹳ(I)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/ﹶʽ;->ʻٴ(J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ʿʽ;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ˈٴ(Ljava/util/ArrayList;)V

    :cond_4
    iget-object v1, p0, Lﹶﾞ/ˋ;->ᵎﹶ:Lיـ/ˑﹳ;

    if-nez v1, :cond_5

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Lיـ/ⁱˊ;

    invoke-virtual {v3}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆˎ;->ʽﹳ()Lcom/google/android/gms/internal/measurement/ˆﹳ;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/ˆˎ;->ʻٴ(I)V

    invoke-virtual {v1, v4}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/ˆˎ;->ـˆ(Ljava/util/List;)V

    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ʿʽ;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ˊʻ(Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ʿʽ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ˎʾ;->ʼʼ(Lcom/google/android/gms/internal/measurement/ʿʽ;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    return-object p1
.end method

.method public final ﹳٴ(Lﹶﾞ/ⁱˊ;)V
    .locals 10

    .prologue
    iget v0, p1, Lﹶﾞ/ⁱˊ;->ᵎﹶ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lﹶﾞ/ⁱˊ;->ʼˎ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˎᐧ;->ᵔﹳ()I

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lﹶﾞ/ⁱˊ;->ʼˎ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ـᵎ;->ᵔﹳ()I

    move-result v0

    :goto_0
    iget-object v1, p1, Lﹶﾞ/ⁱˊ;->ʽ:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lﹶﾞ/ˋ;->ˑﹳ:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lﹶﾞ/ⁱˊ;->ˈ:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lﹶﾞ/ˋ;->ˈ:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lﹶﾞ/ⁱˊ;->ˑﹳ:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lﹶﾞ/ˋ;->ﾞᴵ:Lיـ/ˑﹳ;

    invoke-virtual {v4, v1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, p1, Lﹶﾞ/ⁱˊ;->ˑﹳ:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lﹶﾞ/ⁱˊ;->ﾞᴵ:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ˋ;->ᵎﹶ:Lיـ/ˑﹳ;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v4}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lﹶﾞ/ⁱˊ;->ᵎﹶ:I

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ᵢʿ;->ﹳٴ()V

    iget-object v0, p0, Lﹶﾞ/ˋ;->ᵔᵢ:Lﹶﾞ/ʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ﹳⁱ:Lﹶﾞ/ˈٴ;

    iget-object v6, p0, Lﹶﾞ/ˋ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lﹶﾞ/ⁱˊ;->ᵎﹶ:I

    packed-switch v1, :pswitch_data_2

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_2
    iget-object v1, p1, Lﹶﾞ/ⁱˊ;->ʼˎ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ـᵎ;->ʻٴ()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ᵢʿ;->ﹳٴ()V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v0, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lﹶﾞ/ⁱˊ;->ﾞᴵ:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Lﹶﾞ/ⁱˊ;->ﾞᴵ:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
