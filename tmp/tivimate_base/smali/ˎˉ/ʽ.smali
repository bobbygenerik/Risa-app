.class public final Lˎˉ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˋ/ﹳٴ;


# instance fields
.field public final ʽ:I

.field public final ˈ:Z

.field public final ˑﹳ:Lˎˉ/ﹳٴ;

.field public final ᵎﹶ:J

.field public final ᵔᵢ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:[Lˎˉ/ⁱˊ;


# direct methods
.method public constructor <init>(IIJJIZLˎˉ/ﹳٴ;[Lˎˉ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˎˉ/ʽ;->ﹳٴ:I

    iput p2, p0, Lˎˉ/ʽ;->ⁱˊ:I

    iput-wide p3, p0, Lˎˉ/ʽ;->ᵎﹶ:J

    iput-wide p5, p0, Lˎˉ/ʽ;->ᵔᵢ:J

    iput p7, p0, Lˎˉ/ʽ;->ʽ:I

    iput-boolean p8, p0, Lˎˉ/ʽ;->ˈ:Z

    iput-object p9, p0, Lˎˉ/ʽ;->ˑﹳ:Lˎˉ/ﹳٴ;

    iput-object p10, p0, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/List;)Ljava/lang/Object;
    .locals 11

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽⁱ/ˈʿ;

    iget-object v6, p0, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    iget v7, v5, Lʽⁱ/ˈʿ;->ᴵˊ:I

    aget-object v6, v6, v7

    if-eq v6, v2, :cond_0

    if-eqz v2, :cond_0

    new-array v7, v3, [Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2, v7}, Lˎˉ/ⁱˊ;->ﹳٴ([Lʽⁱ/ﹳᐧ;)Lˎˉ/ⁱˊ;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, v6, Lˎˉ/ⁱˊ;->ˆʾ:[Lʽⁱ/ﹳᐧ;

    iget v5, v5, Lʽⁱ/ˈʿ;->ʽʽ:I

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object v2, v6

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-array v0, v3, [Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2, v0}, Lˎˉ/ⁱˊ;->ﹳٴ([Lʽⁱ/ﹳᐧ;)Lˎˉ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array v0, v3, [Lˎˉ/ⁱˊ;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, [Lˎˉ/ⁱˊ;

    new-instance v0, Lˎˉ/ʽ;

    iget-boolean v8, p0, Lˎˉ/ʽ;->ˈ:Z

    iget-object v9, p0, Lˎˉ/ʽ;->ˑﹳ:Lˎˉ/ﹳٴ;

    iget v1, p0, Lˎˉ/ʽ;->ﹳٴ:I

    iget v2, p0, Lˎˉ/ʽ;->ⁱˊ:I

    iget-wide v3, p0, Lˎˉ/ʽ;->ᵎﹶ:J

    iget-wide v5, p0, Lˎˉ/ʽ;->ᵔᵢ:J

    iget v7, p0, Lˎˉ/ʽ;->ʽ:I

    invoke-direct/range {v0 .. v10}, Lˎˉ/ʽ;-><init>(IIJJIZLˎˉ/ﹳٴ;[Lˎˉ/ⁱˊ;)V

    return-object v0
.end method
