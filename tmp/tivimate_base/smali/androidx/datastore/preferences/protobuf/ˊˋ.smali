.class public final Landroidx/datastore/preferences/protobuf/ˊˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[Ljava/lang/Object;

.field public final ˈ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ʻٴ;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ʽ:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ˈ:I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_1

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_0

    :cond_1
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ˈ:I

    return-void
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ˈ:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method
