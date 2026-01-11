.class public abstract Lﹶʽ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:I

.field public final ˈٴ:Lʽⁱ/ﹳᐧ;

.field public final ᴵˊ:Lʽⁱ/ـˏ;


# direct methods
.method public constructor <init>(ILʽⁱ/ـˏ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶʽ/ʼᐧ;->ʾˋ:I

    iput-object p2, p0, Lﹶʽ/ʼᐧ;->ᴵˊ:Lʽⁱ/ـˏ;

    iput p3, p0, Lﹶʽ/ʼᐧ;->ʽʽ:I

    iget-object p1, p2, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object p1, p1, p3

    iput-object p1, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public abstract ⁱˊ(Lﹶʽ/ʼᐧ;)Z
.end method

.method public abstract ﹳٴ()I
.end method
