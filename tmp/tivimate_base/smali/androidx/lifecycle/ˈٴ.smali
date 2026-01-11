.class public final Landroidx/lifecycle/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ٴᵢ;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Landroidx/lifecycle/ʽʽ;

.field public final ᴵˊ:Landroidx/lifecycle/ٴᵢ;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ʽʽ;Landroidx/lifecycle/ٴᵢ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ˈٴ;->ʽʽ:I

    iput-object p1, p0, Landroidx/lifecycle/ˈٴ;->ʾˋ:Landroidx/lifecycle/ʽʽ;

    iput-object p2, p0, Landroidx/lifecycle/ˈٴ;->ᴵˊ:Landroidx/lifecycle/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ˈٴ;->ʾˋ:Landroidx/lifecycle/ʽʽ;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ʽʽ;->ˆʾ(Landroidx/lifecycle/ٴᵢ;)V

    return-void
.end method

.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/lifecycle/ˈٴ;->ʽʽ:I

    iget-object v1, p0, Landroidx/lifecycle/ˈٴ;->ʾˋ:Landroidx/lifecycle/ʽʽ;

    iget v1, v1, Landroidx/lifecycle/ʽʽ;->ᵎﹶ:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Landroidx/lifecycle/ˈٴ;->ʽʽ:I

    iget-object v0, p0, Landroidx/lifecycle/ˈٴ;->ᴵˊ:Landroidx/lifecycle/ٴᵢ;

    invoke-interface {v0, p1}, Landroidx/lifecycle/ٴᵢ;->ﹳٴ(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
