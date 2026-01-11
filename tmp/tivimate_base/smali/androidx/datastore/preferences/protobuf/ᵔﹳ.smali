.class public final Landroidx/datastore/preferences/protobuf/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ʽ:I


# instance fields
.field public ⁱˊ:Z

.field public final ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ᵔﹳ;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ﾞᴵ()Landroidx/datastore/preferences/protobuf/ﹳـ;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ﾞᴵ()Landroidx/datastore/preferences/protobuf/ﹳـ;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ()V

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ()V

    return-void
.end method

.method public static ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;Landroidx/datastore/preferences/protobuf/ٴﹳ;ILjava/lang/Object;)V
    .locals 2

    .prologue
    sget-object v0, Landroidx/datastore/preferences/protobuf/ٴﹳ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ﹳﹳ;

    if-ne p1, v0, :cond_0

    check-cast p3, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎᵔ(II)V

    invoke-virtual {p3, p0}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎᵔ(II)V

    return-void

    :cond_0
    iget v0, p1, Landroidx/datastore/preferences/protobuf/ٴﹳ;->ᴵˊ:I

    invoke-virtual {p0, p2, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎᵔ(II)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 p3, 0x1

    shl-long v0, p1, p3

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᴵʼ(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧᴵ(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ﹳـ(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʼˈ(I)V

    return-void

    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᴵˑ(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧᴵ(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz p1, :cond_1

    check-cast p3, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˋᵔ(Landroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧᴵ(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵔٴ([BII)V

    return-void

    :pswitch_7
    check-cast p3, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p3

    check-cast p1, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧᴵ(I)V

    invoke-virtual {p3, p0}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;)V

    return-void

    :pswitch_8
    check-cast p3, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {p3, p0}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz p1, :cond_2

    check-cast p3, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˋᵔ(Landroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʿᵢ(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˆﾞ(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʼˈ(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ﹳـ(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᴵˑ(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᴵʼ(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᴵʼ(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʼˈ(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ﹳـ(J)V

    return-void

    nop

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
    .locals 4

    .prologue
    new-instance v0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ᵔﹳ;-><init>()V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-object v2, v1, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˈ()Ljava/util/Set;

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

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽ(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    throw v3

    :cond_3
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
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/ᵔﹳ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/ᵔﹳ;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ⁱˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽ(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroidx/datastore/preferences/protobuf/ʻٴ;

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v5

    invoke-interface {v5, v4}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵔᵢ()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽʽ:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˈ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽ(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_5
    :goto_1
    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽʽ:Z

    const/4 v2, 0x1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_2

    :cond_6
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵᵔ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵᵔ:Ljava/util/Map;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵᵔ:Ljava/util/Map;

    iput-boolean v2, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽʽ:Z

    :cond_8
    iput-boolean v2, p0, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ⁱˊ:Z

    return-void
.end method
