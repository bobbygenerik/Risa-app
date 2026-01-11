.class public final Lᴵᵔ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ʽʽ:F

.field public ʾˋ:Z

.field public ˈٴ:F

.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    iput p2, p0, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lᴵᵔ/ᵔﹳ;->ʾˋ:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ᵔﹳ;->ﹳٴ()Lᴵᵔ/ᵔﹳ;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Lᴵᵔ/ᵔﹳ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ᵔﹳ;->ʾˋ:Z

    if-eqz v0, :cond_0

    new-instance v0, Lᴵᵔ/ᵔﹳ;

    iget v1, p0, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    iget v2, p0, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    invoke-direct {v0, v1, v2}, Lᴵᵔ/ᵔﹳ;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v0, Lᴵᵔ/ᵔﹳ;

    iget v1, p0, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    invoke-direct {v0, v1}, Lᴵᵔ/ᵔﹳ;-><init>(F)V

    :goto_0
    iget-boolean v1, p0, Lᴵᵔ/ᵔﹳ;->ᴵˊ:Z

    iput-boolean v1, v0, Lᴵᵔ/ᵔﹳ;->ᴵˊ:Z

    return-object v0
.end method
