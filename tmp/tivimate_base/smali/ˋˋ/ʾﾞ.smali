.class public final Lˋˋ/ʾﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public ˑﹳ:Z

.field public final synthetic ᵎﹶ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public ﾞᴵ:[I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ʾﾞ;->ᵎﹶ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Lˋˋ/ʾﾞ;->ﹳٴ()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lˋˋ/ʾﾞ;->ﹳٴ:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lˋˋ/ʾﾞ;->ⁱˊ:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˋˋ/ʾﾞ;->ʽ:Z

    iput-boolean v1, p0, Lˋˋ/ʾﾞ;->ˈ:Z

    iput-boolean v1, p0, Lˋˋ/ʾﾞ;->ˑﹳ:Z

    iget-object v1, p0, Lˋˋ/ʾﾞ;->ﾞᴵ:[I

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
