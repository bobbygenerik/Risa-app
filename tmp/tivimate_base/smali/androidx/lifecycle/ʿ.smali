.class public final Landroidx/lifecycle/ʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Landroidx/lifecycle/ـˆ;

.field public final ᴵˊ:Landroidx/lifecycle/ˉʿ;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ـˆ;Landroidx/lifecycle/ˉʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ʿ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iput-object p2, p0, Landroidx/lifecycle/ʿ;->ᴵˊ:Landroidx/lifecycle/ˉʿ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/lifecycle/ʿ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ʿ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iget-object v1, p0, Landroidx/lifecycle/ʿ;->ᴵˊ:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ʿ;->ʽʽ:Z

    :cond_0
    return-void
.end method
