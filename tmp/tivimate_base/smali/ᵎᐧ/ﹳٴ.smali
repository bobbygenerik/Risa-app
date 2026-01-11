.class public final Lᵎᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic ʽʽ:I


# instance fields
.field public final ʾˋ:[I

.field public final ᴵˊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᵎᐧ/ﹳٴ;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lᵎᐧ/ﹳٴ;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎᐧ/ﹳٴ;->ʾˋ:[I

    iput v0, p0, Lᵎᐧ/ﹳٴ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lᵎᐧ/ﹳٴ;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lᵎᐧ/ﹳٴ;

    iget v0, p1, Lᵎᐧ/ﹳٴ;->ᴵˊ:I

    iget v2, p0, Lᵎᐧ/ﹳٴ;->ᴵˊ:I

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/י;->ᵎﹶ(II)V

    iget-object v4, p0, Lᵎᐧ/ﹳٴ;->ʾˋ:[I

    aget v4, v4, v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/י;->ᵎﹶ(II)V

    iget-object v5, p1, Lᵎᐧ/ﹳٴ;->ʾˋ:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_3

    :goto_1
    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lᵎᐧ/ﹳٴ;->ᴵˊ:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lᵎᐧ/ﹳٴ;->ʾˋ:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    iget v0, p0, Lᵎᐧ/ﹳٴ;->ᴵˊ:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lᵎᐧ/ﹳٴ;->ʾˋ:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
