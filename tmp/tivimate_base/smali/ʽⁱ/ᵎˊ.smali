.class public final Lʽⁱ/ᵎˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lʽⁱ/ʼᐧ;


# direct methods
.method public constructor <init>(Lʽⁱ/ʼᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽⁱ/ᵎˊ;->ﹳٴ:Lʽⁱ/ʼᐧ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lʽⁱ/ᵎˊ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lʽⁱ/ᵎˊ;

    iget-object v0, p0, Lʽⁱ/ᵎˊ;->ﹳٴ:Lʽⁱ/ʼᐧ;

    iget-object p1, p1, Lʽⁱ/ᵎˊ;->ﹳٴ:Lʽⁱ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʽⁱ/ʼᐧ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʽⁱ/ᵎˊ;->ﹳٴ:Lʽⁱ/ʼᐧ;

    invoke-virtual {v0}, Lʽⁱ/ʼᐧ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final varargs ﹳٴ([I)Z
    .locals 5

    .prologue
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lʽⁱ/ᵎˊ;->ﹳٴ:Lʽⁱ/ʼᐧ;

    iget-object v4, v4, Lʽⁱ/ʼᐧ;->ﹳٴ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
