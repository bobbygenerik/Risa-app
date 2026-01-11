.class public final Lˑᐧ/ﹳٴ;
.super Lˑᐧ/ʽ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:I

.field public final ˈٴ:[Z


# direct methods
.method public constructor <init>(Lˎᵔ/ﾞᴵ;[BI)V
    .locals 5

    .prologue
    invoke-direct {p0, p1, p2}, Lˑᐧ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    iput p3, p0, Lˑᐧ/ﹳٴ;->ʽʽ:I

    array-length p1, p2

    mul-int/lit8 p1, p1, 0x8

    sub-int/2addr p1, p3

    new-array p3, p1, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    div-int/lit8 v2, v1, 0x8

    aget-byte v2, p2, v2

    rem-int/lit8 v3, v1, 0x8

    rsub-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    aput-boolean v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lˑᐧ/ﹳٴ;->ˈٴ:[Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˑᐧ/ﹳٴ;->ˈٴ:[Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lˑᐧ/ﹳٴ;->ˈٴ:[Z

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    return-object v0
.end method
