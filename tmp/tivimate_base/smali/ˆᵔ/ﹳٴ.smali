.class public final Lˆᵔ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Lj$/util/Comparator;


# static fields
.field public static final ʽʽ:Lˆᵔ/ﹳٴ;

.field public static final ᴵˊ:Lˆᵔ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lˆᵔ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˆᵔ/ﹳٴ;-><init>(I)V

    sput-object v0, Lˆᵔ/ﹳٴ;->ᴵˊ:Lˆᵔ/ﹳٴ;

    new-instance v0, Lˆᵔ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˆᵔ/ﹳٴ;-><init>(I)V

    sput-object v0, Lˆᵔ/ﹳٴ;->ʽʽ:Lˆᵔ/ﹳٴ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final reversed()Ljava/util/Comparator;
    .locals 1

    .prologue
    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lˆᵔ/ﹳٴ;->ᴵˊ:Lˆᵔ/ﹳٴ;

    return-object v0

    :pswitch_0
    sget-object v0, Lˆᵔ/ﹳٴ;->ʽʽ:Lˆᵔ/ﹳٴ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-static {p0, p1, p2}, Lj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lˆᵔ/ﹳٴ;->ʾˋ:I

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparingLong(Ljava/util/Comparator;Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method
