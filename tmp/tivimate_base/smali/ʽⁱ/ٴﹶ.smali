.class public final Lʽⁱ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ʽ:I


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ᵎᵔ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lʽⁱ/ٴﹶ;->ﹳٴ:I

    iput p1, p0, Lʽⁱ/ٴﹶ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lʽⁱ/ٴﹶ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lʽⁱ/ٴﹶ;

    iget v0, p0, Lʽⁱ/ٴﹶ;->ﹳٴ:I

    iget v1, p1, Lʽⁱ/ٴﹶ;->ﹳٴ:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lʽⁱ/ٴﹶ;->ⁱˊ:I

    iget p1, p1, Lʽⁱ/ٴﹶ;->ⁱˊ:I

    if-ne v0, p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x3fd1

    iget v1, p0, Lʽⁱ/ٴﹶ;->ﹳٴ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ٴﹶ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
