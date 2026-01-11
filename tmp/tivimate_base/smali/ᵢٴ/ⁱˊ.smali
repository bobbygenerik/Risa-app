.class public final Lᵢٴ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:I

.field public ˆʾ:I

.field public ˈ:Lᵢٴ/ﹳٴ;

.field public final ˑﹳ:Ljava/util/ArrayList;

.field public ٴﹶ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:Z

.field public ⁱˊ:I

.field public ﹳٴ:[I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᵢٴ/ⁱˊ;->ﹳٴ:[I

    const/4 v0, 0x0

    iput v0, p0, Lᵢٴ/ⁱˊ;->ⁱˊ:I

    iput v0, p0, Lᵢٴ/ⁱˊ;->ʽ:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᵢٴ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    return-void
.end method
