.class public final Lʿᵔ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ˈ;
.implements Lᴵʾ/ˈ;


# instance fields
.field public final ʾˋ:Lˈי/ˈ;

.field public final ᴵˊ:Lˈי/ᵔᵢ;


# direct methods
.method public constructor <init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵔ/ﹳᐧ;->ʾˋ:Lˈי/ˈ;

    iput-object p2, p0, Lʿᵔ/ﹳᐧ;->ᴵˊ:Lˈי/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ˈ()Lᴵʾ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lʿᵔ/ﹳᐧ;->ʾˋ:Lˈי/ˈ;

    instance-of v1, v0, Lᴵʾ/ˈ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵʾ/ˈ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lʿᵔ/ﹳᐧ;->ʾˋ:Lˈי/ˈ;

    invoke-interface {v0, p1}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lʿᵔ/ﹳᐧ;->ᴵˊ:Lˈי/ᵔᵢ;

    return-object v0
.end method
