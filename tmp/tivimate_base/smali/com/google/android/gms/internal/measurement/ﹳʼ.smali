.class public final Lcom/google/android/gms/internal/measurement/ﹳʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ʽ:I


# instance fields
.field public ⁱˊ:Z

.field public final ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹳʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ﹳʼ;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ˉʾ;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ()V

    return-void
.end method

.method public static ⁱˊ(Lcom/google/android/gms/internal/measurement/ʼˋ;Lcom/google/android/gms/internal/measurement/ˈʽ;ILjava/lang/Object;)V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ˈʽ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˈʽ;

    if-eq p1, v0, :cond_3

    iget v0, p1, Lcom/google/android/gms/internal/measurement/ˈʽ;->ᴵˊ:I

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/ـי;->ʾˋ:Lcom/google/android/gms/internal/measurement/ـי;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/ˎˊ;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/gms/internal/measurement/ˎˊ;

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/ˎˊ;->ⁱˊ()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/ˎˏ;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/measurement/ˎˏ;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔٴ(Lcom/google/android/gms/internal/measurement/ˎˏ;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ﹳـ(I[B)V

    return-void

    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/measurement/ﾞי;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ٴﹶ()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˋᵔ(I)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˈ(Lcom/google/android/gms/internal/measurement/ʼˋ;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/measurement/ﾞי;

    check-cast p3, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˈ(Lcom/google/android/gms/internal/measurement/ʼˋ;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/ˎˏ;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/measurement/ˎˏ;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ᵔٴ(Lcom/google/android/gms/internal/measurement/ˎˏ;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈⁱ(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈʿ(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˑٴ(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ʼˈ(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˊˋ(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ـˏ(J)V

    return-void

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/measurement/ﾞי;

    sget-object p1, Lcom/google/android/gms/internal/measurement/ـˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    check-cast p3, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˈ(Lcom/google/android/gms/internal/measurement/ʼˋ;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˉٴ(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹳʼ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ﹳʼ;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/ˉʾ;->ᴵˊ:I

    if-gtz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ⁱˊ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ﹳٴ(I)Lcom/google/android/gms/internal/measurement/ʾˆ;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʾˆ;->ʾˋ:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ﹳʼ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/ﹳʼ;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ˉʾ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ﹳٴ()V
    .locals 6

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ⁱˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˉʾ;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ᴵˊ:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ﹳٴ(I)Lcom/google/android/gms/internal/measurement/ʾˆ;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ʾˆ;->ᴵˊ:Ljava/lang/Object;

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵎﹶ()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ⁱˊ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵎﹶ()V

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˈٴ:Z

    if-nez v1, :cond_7

    iget v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ᴵˊ:I

    if-gtz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ⁱˊ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ﹳٴ(I)Lcom/google/android/gms/internal/measurement/ʾˆ;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʾˆ;->ʾˋ:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7
    :goto_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˈٴ:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʽʽ:Ljava/util/Map;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʽʽ:Ljava/util/Map;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˊʻ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˊʻ:Ljava/util/Map;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˊʻ:Ljava/util/Map;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˈٴ:Z

    :cond_a
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/ﹳʼ;->ⁱˊ:Z

    return-void
.end method
