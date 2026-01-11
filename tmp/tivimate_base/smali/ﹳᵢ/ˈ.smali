.class public final Lﹳᵢ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public ⁱˊ:J

.field public final ﹳٴ:Lﹳᵢ/ᴵˊ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ᴵˊ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lﹳᵢ/ˈ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹳᵢ/ˈ;->ʽ:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lﹳᵢ/ˈ;->ⁱˊ:J

    return-void
.end method
