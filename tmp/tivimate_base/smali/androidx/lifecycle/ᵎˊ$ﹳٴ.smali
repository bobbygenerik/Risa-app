.class public final Landroidx/lifecycle/ᵎˊ$ﹳٴ;
.super Landroidx/lifecycle/ᵎﹶ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ᵎˊ;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ᵔי;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ᵔי;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/ᵎˊ$ﹳٴ;->this$0:Landroidx/lifecycle/ᵔי;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/ᵎˊ$ﹳٴ;->this$0:Landroidx/lifecycle/ᵔי;

    invoke-virtual {p1}, Landroidx/lifecycle/ᵔי;->ﹳٴ()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    iget-object p1, p0, Landroidx/lifecycle/ᵎˊ$ﹳٴ;->this$0:Landroidx/lifecycle/ᵔי;

    iget v0, p1, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    :cond_0
    return-void
.end method
